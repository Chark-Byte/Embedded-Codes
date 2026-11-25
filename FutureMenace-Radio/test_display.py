from drivers.gc9a01 import GC9A01
import time

display = GC9A01()

display initialized()

BLACK = 0x0000
WHITE = 0xFFFF
RED = 0xF800
GREEN = 0x07E0
BLUE = 0x001F

print("starting test...")

print("Test BLACK...")
display.fill(BLACK)
time.sleep(2)

print("Test RED...")
display.fill(RED)
time.sleep(2)

print("Test GREEN...")
display.fill(GREEN)
time.sleep(2)

print("Test BLUE...")
display.fill(BLUE)
time.sleep(2)

print("Test WHITE...")
display.fill(WHITE)
time.sleep(2)

#draw rect
print("Draw rect...")
display.fill(BLACK)
display.fill_rect(40, 40, 160, 160, RED)

print("Screen test complete!")
