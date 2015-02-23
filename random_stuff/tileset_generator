'''
I made this application because I cannot use GIMP that well.
In fact it was the most iritating experience for me, trying to make tileset of 50 images.
One pixel mistake and you can do it again.
That is why I created this.
It creates a tileset.png out of all png files located in \tiles\ directory.
'''
from PIL import Image
import sys


class Tileset(object):
    def __init__(self):
        #x and y is the width and height of the tile
        (self.x, self.y) = (70, 70)
        #width represents how many tiles we want to have in one line
        self.width = 10
        #separators will separate tiles from each other
        (self.xs, self.ys) = (1, 1)

    @staticmethod
    def load_tiles():
        import glob
        names = glob.glob('tiles/*.png')
        tiles = []
        for i, tile in enumerate(names):
            tiles.append(Image.open(tile))
            tiles[i].convert("RGBA")
        return tiles

    def create_image(self):
        import math
        tiles = self.load_tiles()
        x = self.x * self.width + self.width * self.xs - self.xs
        row = math.ceil(len(tiles)/self.width)
        y = self.y * row + row * self.ys - self.ys
        new_im = Image.new('RGBA', (x, y))
        a = 0
        i = 0
        while i < y and a < len(tiles):
            j = 0
            while j < x and a < len(tiles):
                new_im.paste(tiles[a], (j, i))
                j += self.x + self.xs
                a += 1
            i += self.y + self.ys
        return new_im


def main():
    new = Tileset()
    '''
    If you want to change Tile size you should do it here
    new.x = 30
    new.y = 30
    10 tiles in one row is too much?
    new.width = 5
    now it is changed to 5
    change new.xs and new.xy if you want tiles to be separated differently
    '''
    tileset = new.create_image()
    tileset.save("tileset.png", "PNG")
    return 0

if __name__ == '__main__':
    sys.exit(main())
