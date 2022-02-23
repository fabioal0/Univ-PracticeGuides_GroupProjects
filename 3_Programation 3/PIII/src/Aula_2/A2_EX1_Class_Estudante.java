package Aula_2;
    
import java.util.Objects;

class A2_EX1_Class_Estudante extends A2_EX1_Class_Cliente {
 
    private final           String              Tipo = "Estudante";   
    private final           String              Curso_Frequentado;
    private final            int                Numero_Mecanografrico;
    private                  int                Videos_Req=0;

    public A2_EX1_Class_Estudante(String Curso_Frequentado, int Numero_Mecanografrico, String Nome_Usuario, int Cartao_Cidadao, A2_EX1_Class_Data Data_Nascimento) {
        super(Nome_Usuario, Cartao_Cidadao, Data_Nascimento);
        
        this.Curso_Frequentado     = Curso_Frequentado;
        this.Numero_Mecanografrico = Numero_Mecanografrico;
        
    }

    public String Tipo() {
        
        return Tipo;
        
    }

    public String Curso_Frequentado() {
        
        return Curso_Frequentado;
        
    }

    public int Numero_Mecanografrico() {
        
        return Numero_Mecanografrico;
        
    }

    public int Videos_Req_Total() {
        
        return Videos_Req;
        
    }

    public void Videos_Req() {
        
        this.Videos_Req ++;
    
    }
    
    public void Videos_Dev() {
        
        this.Videos_Req --;
    
    }

    public static void Print_requesitos_E(KeyValueNode[] usuario){
         
        System.out.printf("Estudantes: %n"); 
        
        for (KeyValueNode usuario1 : usuario) {
            System.out.printf("%s %n", usuario1.Elem.toString());
        }
     
    }
    
    @Override
    public int hashCode() {
        int hash = 7;
        hash = 61 * hash + Objects.hashCode(this.Tipo);
        hash = 61 * hash + Objects.hashCode(this.Curso_Frequentado);
        hash = 61 * hash + this.Numero_Mecanografrico;
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
        final A2_EX1_Class_Estudante other = (A2_EX1_Class_Estudante) obj;
        if (this.Numero_Mecanografrico != other.Numero_Mecanografrico) {
            return false;
        }
        if (!Objects.equals(this.Tipo, other.Tipo)) {
            return false;
        }
        if (!Objects.equals(this.Curso_Frequentado, other.Curso_Frequentado)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {

        return super.toString()+" O seu numero mecanografico e " + this.Numero_Mecanografrico + " e o seu curso e " + this.Curso_Frequentado;

    }
    
}
