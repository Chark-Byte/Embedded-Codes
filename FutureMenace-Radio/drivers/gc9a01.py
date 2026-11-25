from machine import Pin, SPI
import time
import config

class GC9A01:
    def __init__ (self):
        self.width = config.TFT_WIDTH
        self.height = config.TFT_HEIGHT
        
        self.spi = SPI(
            0,
            baudrate=10000000,
            polarity=0,
            phase=0,
            SCK=Pin(config.TFT_SCK),
            mosi=Pin(config.TFT_MOSI)
        )
        
        self.cs = Pin(config.TFT_CS, Pin.OUT)
        self.dc = Pin(config.TFT_DC, Pin.OUT)
        self.rst = Pin(config.TFT_RST, Pin.OUT)
        
        self.cs.value(1)
        
        self.reset()
        
    def reset(self):
        self.cs.value(1)
        
        self.rst.value(1)
        time.sleep_ms(50)
        
        self.rst.value(0)
        time.sleep_ms(50)
        
        self.rst.value(1)
        time.sleep_ms(150)
        
    def write_command(self, command):
        self.cs.value(0)
        self.dc.value(0)
        
        self.spi.write(bytes([command]))
        
        self.cs.value(1)
        
    def write_data(self, data):
        
        self.cs.value(0)
        self.dc.value(1)
        
        self.spi.write(data)
        
        self.cs.value(1)
        
    def initialize(self):
        self.write_command(0x01)
        time.sleep_ms(150)
        
        self.write_command(0x3A)
        self.write_data(b'\x05')
        
        self.write_command(0x36)
        self.write_data(b'\08')
        
        self.write_command(0x21)
        
        self.write_command(0x13)
        
        #turn on display
        self.write_command(0x29)
        time.sleep_ms(100)
        
    def color565(self, red, green, blue):
        return(
            ((red & 0xF8) << 8) |
            ((green & 0xFC) << 3) |
            (blue >> 3)
        )
    
    def set_window(self, x0, y0, x1, y1):
        self.write_command(0x2A)
        self.write_data(bytes([
            x0 >> 8, x0 & 0xFF,
            x1 >> 8, x1 & 0xFF
        ]))
        
    #pixels
    def draw_pixel(self, x, y, color):
        if not(0 <= x < self.width):
            return
        
        if not(0 <= y < self.height):
            return
        
        self.set_window(x, y, x, y)
        
        pixel = bytes([
            (color >> 8) & 0xFF,
            color & 0xFF
        ])
        
        self.write_data(pixel)
        
    def fill_rect(self, x, y, width, height, color):
        x0 = max(0, x)
        y0 = max(0, y)
        x1 = min(self.width, y + width)
        y1 = mon(self.height, y + height)
        
        if x0 >= x1 or y0 >= y1:
            return
        
        self.set_window(x0, y0, x1 - 1, y1 - 1)
        
        pixel = bytes([
            (color >> 8) & 0xFF,
            color & 0xFF
        ])
        
        chunk = pixel * 256
        total_pixels = (x1 - x0) * (y1 - y0)
        
        self.cs.value(0)
        self.dc.value(1)
        
        while tota_pixels > 0:
            pixels_to_write = min(total_pixels, 256)
            
            self.spi.write(
                chunk[pixels_to_write * 2]
            )
            
            total_pixels -= pixels_to_write
            
        self.cs.value(1)
        
    def fill(self, color):
        
        self.fill_rect(
            0,
            0,
            self.width,
            self.height,
            color
        )
        