class RadioDisplay:
    def __init__(self, screen):
        
        self.screen = screen
        
        self.frequency = 98.5
        
        self.width = 240
        self.height = 240
        
    def show_startup(self):
        print("FUTURE MENACE")
        print("initializing display...")
        
    def show_frequency(self, frequency):
        self.frequency = frequency
        
        print("Current Station: ", self.frequency, "MHz")
        
    def show_status(self, message):
        print("Status: ", message)
            
            