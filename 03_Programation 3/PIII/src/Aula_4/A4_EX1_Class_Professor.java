package Aula_4;

import Aula_1.A1_EX2_Class_Data;
import Aula_1.A1_EX2_Class_Pessoa;
import java.util.Objects;

public class A4_EX1_Class_Professor extends A1_EX2_Class_Pessoa {
   
    private static int aux;
    private final A1_EX2_Class_Data Data_Admi;
    private final int Num_Func;

    public A4_EX1_Class_Professor(A1_EX2_Class_Data Data_Admi, String Nome, int CC, A1_EX2_Class_Data DataNasc) {
        super(Nome, CC, DataNasc);
        this.Data_Admi = Data_Admi;
        aux++;
        this.Num_Func = aux;
    }

    public A1_EX2_Class_Data Data_Admi() {
        return Data_Admi;
    }

    public int Num_Func() {
        return Num_Func;
    }

    @Override
    public String toString() {
        return super.toString()+" Data admicao: " + this.Data_Admi.DataExtenso() + " , Numero Funcionario: " + Num_Func ;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 71 * hash + Objects.hashCode(this.Data_Admi);
        hash = 71 * hash + this.Num_Func;
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
        final A4_EX1_Class_Professor other = (A4_EX1_Class_Professor) obj;
        if (this.Num_Func != other.Num_Func) {
            return false;
        }
        if (!Objects.equals(this.Data_Admi, other.Data_Admi)) {
            return false;
        }
        return true;
    }
    
}
