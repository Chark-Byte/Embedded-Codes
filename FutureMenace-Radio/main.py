import config

def main():
    print("==============================")
    print("     Future Menace Radio")
    print("==============================")
    
    print("Display Config: ")
    print("Reso: ", config.TFT_WIDTH, "x", config.TFT_HEIGHT)
    
    print("\nRadio Config: ")
    print("Minimum FREQ: ", config.MIN_FREQUENCY, "MHZ")
    print("Maximum FREQ: ", config.MAX_FREQUNECY, "MHz")
    print("Starting FREQ: ", config.DEFAULT_FREQUENCY, "MHz")
    
    print("\nFUTURE MENACE INITIALIZED")
    
if __name__ == "__main__":
    main()