package Aula7_Ex2;

import java.util.Arrays;
import java.util.Objects;

public class Bitmap {
  
    BitmapFileHeader bitmapFileHeader;
    BitmapInfoHeader bitmapInfoHeader;
    byte[] rgbQuad; // color pallete – opcional (ver abaixo)
    byte[] data; // pixel data

    public Bitmap(BitmapFileHeader bitmapFileHeader, BitmapInfoHeader bitmapInfoHeader, byte[] rgbQuad, byte[] data) {
        this.bitmapFileHeader = bitmapFileHeader;
        this.bitmapInfoHeader = bitmapInfoHeader;
        this.rgbQuad = rgbQuad;
        this.data = data;
    }

    public BitmapFileHeader getBitmapFileHeader() {
        return bitmapFileHeader;
    }

    public BitmapInfoHeader getBitmapInfoHeader() {
        return bitmapInfoHeader;
    }

    public byte[] getRgbQuad() {
        return rgbQuad;
    }

    public byte[] getData() {
        return data;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 19 * hash + Objects.hashCode(this.bitmapFileHeader);
        hash = 19 * hash + Objects.hashCode(this.bitmapInfoHeader);
        hash = 19 * hash + Arrays.hashCode(this.rgbQuad);
        hash = 19 * hash + Arrays.hashCode(this.data);
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
        final Bitmap other = (Bitmap) obj;
        if (!Objects.equals(this.bitmapFileHeader, other.bitmapFileHeader)) {
            return false;
        }
        if (!Objects.equals(this.bitmapInfoHeader, other.bitmapInfoHeader)) {
            return false;
        }
        if (!Arrays.equals(this.rgbQuad, other.rgbQuad)) {
            return false;
        }
        if (!Arrays.equals(this.data, other.data)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return  bitmapFileHeader + "\t" + bitmapInfoHeader + ", rgbQuad=" + rgbQuad + ", data=" + data ;
    }
    
    
}
    

