
package Aula7_Ex2;

public class BitmapFileHeader {
    
    short type; // must be 'BM' to declare a bmp-file
    int size; // specifies the size of the file in bytes
    short reserved1; // must always be set to zero
    short reserved2; // must always be set to zero
    int offBits; // specifies the offset from the

    public BitmapFileHeader(short type, int size, short reserved1, short reserved2, int offBits) {
        this.type = type;
        this.size = size;
        this.reserved1 = reserved1;
        this.reserved2 = reserved2;
        this.offBits = offBits;
    }

    public short getType() {
        return type;
    }

    public int getSize() {
        return size;
    }

    public short getReserved1() {
        return reserved1;
    }

    public short getReserved2() {
        return reserved2;
    }

    public int getOffBits() {
        return offBits;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 59 * hash + this.type;
        hash = 59 * hash + this.size;
        hash = 59 * hash + this.reserved1;
        hash = 59 * hash + this.reserved2;
        hash = 59 * hash + this.offBits;
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
        final BitmapFileHeader other = (BitmapFileHeader) obj;
        if (this.type != other.type) {
            return false;
        }
        if (this.size != other.size) {
            return false;
        }
        if (this.reserved1 != other.reserved1) {
            return false;
        }
        if (this.reserved2 != other.reserved2) {
            return false;
        }
        if (this.offBits != other.offBits) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "type=" + type + ", size=" + size + ", reserved1=" + reserved1 + ", reserved2=" + reserved2 + ", offBits=" + offBits + '}';
    }
    
        
}
