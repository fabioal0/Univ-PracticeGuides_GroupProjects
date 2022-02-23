package Aula7_Ex2;

public class BitmapInfoHeader {
    
    int size; // the size of this header (40 bytes)
    int width; // the bitmap width in pixels
    int height; // the bitmap height in pixels
    short planes; // the number of color planes being used. Must be set to 1
    short bitCount; // the number of bits per pixel (color depth) - 1, 4, 8, 16, 24, 32
    int compression; // the compression method being used
    int sizeImage; // the image size. This is the size of the raw bitmap data
    int xPelsPerMeter; // the horizontal resolution of the image (pixel per meter)
    int yPelsPerMeter; // the vertical resolution of the image (pixel per meter)
    int clrUsed; // the number of colors in the color palette,or 0 to default to 2n
    int clrImportant; // the number of important colors used, or 0 when every color is important

    public BitmapInfoHeader(int size, int width, int height, short planes, short bitCount, int compression, int sizeImage, int xPelsPerMeter, int yPelsPerMeter, int clrUsed, int clrImportant) {
        this.size = size;
        this.width = width;
        this.height = height;
        this.planes = planes;
        this.bitCount = bitCount;
        this.compression = compression;
        this.sizeImage = sizeImage;
        this.xPelsPerMeter = xPelsPerMeter;
        this.yPelsPerMeter = yPelsPerMeter;
        this.clrUsed = clrUsed;
        this.clrImportant = clrImportant;
    }

    public int getSize() {
        return size;
    }

    public int getWidth() {
        return width;
    }

    public int getHeight() {
        return height;
    }

    public short getPlanes() {
        return planes;
    }

    public short getBitCount() {
        return bitCount;
    }

    public int getCompression() {
        return compression;
    }

    public int getSizeImage() {
        return sizeImage;
    }

    public int getxPelsPerMeter() {
        return xPelsPerMeter;
    }

    public int getyPelsPerMeter() {
        return yPelsPerMeter;
    }

    public int getClrUsed() {
        return clrUsed;
    }

    public int getClrImportant() {
        return clrImportant;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 31 * hash + this.size;
        hash = 31 * hash + this.width;
        hash = 31 * hash + this.height;
        hash = 31 * hash + this.planes;
        hash = 31 * hash + this.bitCount;
        hash = 31 * hash + this.compression;
        hash = 31 * hash + this.sizeImage;
        hash = 31 * hash + this.xPelsPerMeter;
        hash = 31 * hash + this.yPelsPerMeter;
        hash = 31 * hash + this.clrUsed;
        hash = 31 * hash + this.clrImportant;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final BitmapInfoHeader other = (BitmapInfoHeader) obj;
        if (this.size != other.size) {
            return false;
        }
        if (this.width != other.width) {
            return false;
        }
        if (this.height != other.height) {
            return false;
        }
        if (this.planes != other.planes) {
            return false;
        }
        if (this.bitCount != other.bitCount) {
            return false;
        }
        if (this.compression != other.compression) {
            return false;
        }
        if (this.sizeImage != other.sizeImage) {
            return false;
        }
        if (this.xPelsPerMeter != other.xPelsPerMeter) {
            return false;
        }
        if (this.yPelsPerMeter != other.yPelsPerMeter) {
            return false;
        }
        if (this.clrUsed != other.clrUsed) {
            return false;
        }
        if (this.clrImportant != other.clrImportant) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "size=" + size + ", width=" + width + ", height=" + height + ", planes=" + planes + ", bitCount=" + bitCount + ", compression=" + compression + ", sizeImage=" + sizeImage + ", xPelsPerMeter=" + xPelsPerMeter + ", yPelsPerMeter=" + yPelsPerMeter + ", clrUsed=" + clrUsed + ", clrImportant=" + clrImportant ;
    }
    
    
    
}
