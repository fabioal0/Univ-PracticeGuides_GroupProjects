package Aula_3;

public class A3_EX3_Main {

    public static void main(String[] args) {
        
        A3_EX3_Class_Motociclo Motociclo        =new A3_EX3_Class_Motociclo();
        A3_EX3_Class_Ligeiro Ligeiro            =new A3_EX3_Class_Ligeiro();
        A3_EX3_Class_Pesado_Mercadorias P_Merc  =new A3_EX3_Class_Pesado_Mercadorias();
        A3_EX3_Class_Pesado_Passageiros P_Pass  =new A3_EX3_Class_Pesado_Passageiros();
        
        // 99999=indefenido
        
        System.out.println( Motociclo);
        System.out.println();
        System.out.println( Ligeiro);
        System.out.println();
        System.out.println( P_Merc);
        System.out.println();
        System.out.println( P_Pass);
        System.out.println();
        System.out.println();
        System.out.println();
        
        A3_EX3_Class_Condutor A=new A3_EX3_Class_Condutor("A", 1, 2, 2, 4);
        
        System.out.println( "O condutor A tem : "+A);
        System.out.println();
        System.out.println();
        System.out.println("Pode conduzir um carro tipo A que possui com as carateristicas indicadas : "+ Motociclo.equals(A.Veiculo()));
        System.out.println();        
        System.out.println("Pode conduzir um carro tipo B que possui com as carateristicas indicadas : "+ Ligeiro.equals(A.Veiculo()));
        System.out.println();
        System.out.println("Pode conduzir um carro tipo C que possui com as carateristicas indicadas : "+ P_Merc.equals(A.Veiculo()));
        System.out.println();
        System.out.println("Pode conduzir um carro tipo D que possui com as carateristicas indicadas : "+ P_Pass.equals(A.Veiculo()));
        System.out.println();
        System.out.println();
        System.out.println();
        
        A3_EX3_Class_Condutor B=new A3_EX3_Class_Condutor("A", 10000, 200000, 30000, 40000);
        
        System.out.println( "O condutor B tem : "+B);
        System.out.println();
        System.out.println();
        System.out.println("Pode conduzir um carro tipo A que possui com as carateristicas indicadas : "+ Motociclo.equals(B.Veiculo()));
        System.out.println();
        System.out.println("Pode conduzir um carro tipo B que possui com as carateristicas indicadas : "+ Ligeiro.equals(B.Veiculo()));
        System.out.println();
        System.out.println("Pode conduzir um carro tipo C que possui com as carateristicas indicadas : "+ P_Merc.equals(B.Veiculo()));
        System.out.println();
        System.out.println("Pode conduzir um carro tipo D que possui com as carateristicas indicadas : "+ P_Pass.equals(B.Veiculo()));
        System.out.println();
        System.out.println();
        System.out.println();
        
        A3_EX3_Class_Condutor C= new A3_EX3_Class_Condutor("B", 1, 2, 2, 4);      
        
        System.out.println( "O condutor C tem : "+C);
        System.out.println();
        System.out.println();
        System.out.println("Pode conduzir um carro tipo A que possui com as carateristicas indicadas : "+ Motociclo.equals(C.Veiculo()));
        System.out.println();
        System.out.println("Pode conduzir um carro tipo B que possui com as carateristicas indicadas : "+ Ligeiro.equals(C.Veiculo()));
        System.out.println();
        System.out.println("Pode conduzir um carro tipo C que possui com as carateristicas indicadas : "+ P_Merc.equals(C.Veiculo()));
        System.out.println();
        System.out.println("Pode conduzir um carro tipo D que possui com as carateristicas indicadas : "+ P_Pass.equals(C.Veiculo()));
        System.out.println();
        System.out.println();
        System.out.println();
        
        A3_EX3_Class_Condutor D= new A3_EX3_Class_Condutor("B", 10000, 200000, 30000, 40000);      
        
        System.out.println( "O condutor D tem : "+D);
        System.out.println();
        System.out.println();
        System.out.println("Pode conduzir um carro tipo A que possui com as carateristicas indicadas : "+ Motociclo.equals(D.Veiculo()));
        System.out.println();
        System.out.println("Pode conduzir um carro tipo B que possui com as carateristicas indicadas : "+ Ligeiro.equals(D.Veiculo()));
        System.out.println();
        System.out.println("Pode conduzir um carro tipo C que possui com as carateristicas indicadas : "+ P_Merc.equals(D.Veiculo()));
        System.out.println();
        System.out.println("Pode conduzir um carro tipo D que possui com as carateristicas indicadas : "+ P_Pass.equals(D.Veiculo()));
        System.out.println();
        System.out.println();
        System.out.println();
        
        A3_EX3_Class_Condutor E=new A3_EX3_Class_Condutor("C", 1, 2, 2, 4);
        
        System.out.println( "O condutor A tem : "+A);
        System.out.println();
        System.out.println();
        System.out.println("Pode conduzir um carro tipo A que possui com as carateristicas indicadas : "+ Motociclo.equals(E.Veiculo()));
        System.out.println();
        System.out.println("Pode conduzir um carro tipo B que possui com as carateristicas indicadas : "+ Ligeiro.equals(E.Veiculo()));
        System.out.println();
        System.out.println("Pode conduzir um carro tipo C que possui com as carateristicas indicadas : "+ P_Merc.equals(E.Veiculo()));
        System.out.println();
        System.out.println("Pode conduzir um carro tipo D que possui com as carateristicas indicadas : "+ P_Pass.equals(E.Veiculo()));
        System.out.println();
        System.out.println();
        System.out.println();
        
        A3_EX3_Class_Condutor F=new A3_EX3_Class_Condutor("C", 10000, 200000, 30000, 40000);
        
        System.out.println( "O condutor B tem : "+B);
        System.out.println();
        System.out.println();
        System.out.println("Pode conduzir um carro tipo A que possui com as carateristicas indicadas : "+ Motociclo.equals(F.Veiculo()));
        System.out.println();
        System.out.println("Pode conduzir um carro tipo B que possui com as carateristicas indicadas : "+ Ligeiro.equals(F.Veiculo()));
        System.out.println();
        System.out.println("Pode conduzir um carro tipo C que possui com as carateristicas indicadas : "+ P_Merc.equals(F.Veiculo()));
        System.out.println();
        System.out.println("Pode conduzir um carro tipo D que possui com as carateristicas indicadas : "+ P_Pass.equals(F.Veiculo()));
        System.out.println();
        System.out.println();
        System.out.println();
        
        A3_EX3_Class_Condutor G= new A3_EX3_Class_Condutor("D", 1, 2, 2, 4);      
        
        System.out.println( "O condutor C tem : "+C);
        System.out.println();
        System.out.println();
        System.out.println("Pode conduzir um carro tipo A que possui com as carateristicas indicadas : "+ Motociclo.equals(G.Veiculo()));
        System.out.println();
        System.out.println("Pode conduzir um carro tipo B que possui com as carateristicas indicadas : "+ Ligeiro.equals(G.Veiculo()));
        System.out.println();
        System.out.println("Pode conduzir um carro tipo C que possui com as carateristicas indicadas : "+ P_Merc.equals(G.Veiculo()));
        System.out.println();
        System.out.println("Pode conduzir um carro tipo D que possui com as carateristicas indicadas : "+ P_Pass.equals(G.Veiculo()));
        System.out.println();
        System.out.println();
        System.out.println();
        
        A3_EX3_Class_Condutor H= new A3_EX3_Class_Condutor("D", 10000, 200000, 30000, 40000);      
        
        System.out.println( "O condutor D tem : "+D);
        System.out.println();
        System.out.println();
        System.out.println("Pode conduzir um carro tipo A que possui com as carateristicas indicadas : "+ Motociclo.equals(H.Veiculo()));
        System.out.println();
        System.out.println("Pode conduzir um carro tipo B que possui com as carateristicas indicadas : "+ Ligeiro.equals(H.Veiculo()));
        System.out.println();
        System.out.println("Pode conduzir um carro tipo C que possui com as carateristicas indicadas : "+ P_Merc.equals(H.Veiculo()));
        System.out.println();
        System.out.println("Pode conduzir um carro tipo D que possui com as carateristicas indicadas : "+ P_Pass.equals(H.Veiculo()));
        
    }
    
}
