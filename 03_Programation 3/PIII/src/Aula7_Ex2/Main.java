package Aula7_Ex2;

import java.io.IOException;
import java.io.RandomAccessFile;

public class Main {

    //nao  esta funcional
    
    public static void main(String[] args) {

        try (RandomAccessFile file = new RandomAccessFile("Infopublico.bin", "rw")) {
            
            Bitmap bit=new Bitmap(
                       new BitmapFileHeader(file.readShort(),file.readInt(),file.readShort(),file.readShort(),file.readShort() ) ,  
                       new BitmapInfoHeader (file.readInt(), file.readInt(), file.readInt(), file.readShort(), file.readShort(), file.readInt(),file.readInt(), file.readInt(), file.readInt(), file.readInt(), file.readInt()), 
                       new byte[4]  , 
                       new byte[4] );

                       //byte[]cor={file.readByte(),file.readByte(),file.readByte(),file.readByte()}; 
                       //byte[]dados={file.readInt(), file.readInt(), file.readShort(),file.readInt(), file.readInt(), file.readShort()}; 
        } catch (IOException e) {
            System.out.println(e.getMessage());
        }
        

        
        
    }
    
}
