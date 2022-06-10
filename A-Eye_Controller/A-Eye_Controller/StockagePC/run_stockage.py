import argparse
import stockage

def main():
    """
    Main function to store the image.
    
    Args:
        -f --file: path to the file.
        -m --mode: the mode "A" or "M".
    """
    parser = argparse.ArgumentParser()
    parser.add_argument("-f", "--file", type=str,required=True, help="name of the file")
    parser.add_argument("-m", "--mode", type=str,required=False, help="mode of the capture")
    args = parser.parse_args()
    if args.mode:
        stockage.placeImage(img=args.file, mode=args.mode)
    else:
        stockage.placeImage(img=args.file)

if __name__ == "__main__":
    main()
