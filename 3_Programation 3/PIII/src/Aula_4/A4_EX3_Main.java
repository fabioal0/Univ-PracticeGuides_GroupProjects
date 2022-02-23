package Aula_4;

import static Aula_4.Order.Print_requesitos;
import static Aula_4.Order.Print_user_requesitos;
import static Aula_4.Order.Sort;
import static Aula_4.Data.Dia_Valido;
import static Aula_4.Data.Mes_Valido;
import static Aula_4.Order.Print;
import java.util.Scanner;

public class A4_EX3_Main {


    public static void main(String[] args) {
        
        Scanner kb = new Scanner(System.in);
                
        LinkedList   <Cliente>    clientes     = new LinkedList();
        LinkedList   <Video>      filmes       = new LinkedList() ;
        
        int Escolha=0;          //switch
        int Dia, Mes, Ano;      //case 1               data de nascimento 
        int Tipo=0;             //case 1               estudnte/funcionario
        int N_Mec;              //case 1               dados de estudante
        int NIF, N_Func;        //case 1               dados de funcionario
        int Socio_ident;        //case 2,7             escolher utilizador a apagar e guardar requesitos a um filme
        int Categoria, Idade;   //case 4               dados do filme 
        String Titulo,Curso;    //case 4               dados do filme 
        int Filme_ident;        //case 5,6,7,8,9       identificar filme para executar operações 
        double rating;
        String nome;
        int cc;
        final int max_req;
        
        System.out.print("Maximo de rquesitos: ");
            max_req=kb.nextInt();
        
        while(Escolha !=12){
        
        System.out.println("1 - Adicionar Socio");
        System.out.println("2 - Remover Socio");
        System.out.println("3 - Listar Filmes");
        System.out.println("4 - Adicionar Filmes");
        System.out.println("5 - Remover Filmes");
        System.out.println("6 - Verificsr Disponibilidade de determinado filme");
        System.out.println("7 - Requisitar Filme");
        System.out.println("8 - Devolver Filme"); 
        System.out.println("9 - Quais utilizadores requisitaram determinado filme");
        System.out.println("10 - Listar Filmes por ranking");
        System.out.println("11- Quais filmes foram requisitaram por determinado utilizador");
        
        Escolha=kb.nextInt();    
            
            switch(Escolha){

                case 1:

                    System.out.print("Nome: "); 
                        nome = kb.next();
                        
                    assert nome!=null:"Nome Invalido";    
                        
                    System.out.print("Cartao de cidadao: "); 
                        cc = kb.nextInt();    
                    
                    assert cc>0:"Cartao de cidadao Invalido";       
                    
                    System.out.println("Data de Nascimento"); 

                    System.out.print("Ano: "); 
                        Ano = kb.nextInt();

                    System.out.print("Mes: ");
                        Mes = kb.nextInt();

                    assert Mes_Valido(Mes) : "Mes Invalido";        
                        
                    System.out.print("Dia: "); 
                        Dia = kb.nextInt();
                        
                    assert Dia_Valido(Mes,Dia,Ano) : "Dia Invaliido";     

                    System.out.println(); 

                    System.out.println("0 - Estudante / 1 - Funcionario"); 
                        Tipo= kb.nextInt();
                        
                    assert Tipo==0 || Tipo==1 : "Tipo de usuario Invaliido";     

                   Data Data_Nascimento = new Data(Dia,Mes,Ano);

                    if(Tipo==0){

                        System.out.print("Numero Mecanografico: "); 
                            N_Mec = kb.nextInt();
                            
                        assert N_Mec>0:"Cartao de cidadao Invalido";      

                        System.out.print("Curso: ");     
                            Curso = kb.next();

                        assert Curso!=null:"Nome Invalido";        
                            
                        Cliente Estudante=new Estudante(Curso,N_Mec,nome,cc,Data_Nascimento);
                        clientes.addFirst(Estudante.Numero_Socio(), Estudante);

                    }

                    else if(Tipo==1){

                        System.out.print("Numero de Identificacao Fiscal: "); 
                            NIF=kb.nextInt();
                        
                        assert NIF>=0:"Numero de Identificacao Fiscal";       
                            
                        System.out.print("Numero de funcionario: ");     
                            N_Func=   kb.nextInt();      

                        assert N_Func>=0:"Numero de funcionario Invalido";     
                            
                        Cliente Funcionario=new  Funcionario(N_Func, NIF, nome, cc, Data_Nascimento);
                        clientes.addFirst(Funcionario.Numero_Socio(),Funcionario);

                    }

                break;

                case 2:
                    
                    
                    if(clientes.size()!=0){

                        Print_requesitos(clientes.print(new Cliente[clientes.size()]));
                    
                    }
                     
                    
                    System.out.print("Numero do socio a remover: "); 
                        Socio_ident = kb.nextInt();

                    assert  clientes.size()>0 &&(clientes.search(Socio_ident)!=null || clientes.search(Socio_ident)!=null):"Socio Inexistente";         
                    
                    if(clientes.size()>0 && clientes.search(Socio_ident)!=null){
                        
                        clientes.remover(Socio_ident);
                        
                    }
                   
                    else if(clientes.size()>0 && clientes.search(Socio_ident)!=null){
                        
                        clientes.remover(Socio_ident);
                    
                    }


                break;    

                case 3:

                    Print(filmes.print(new Video[filmes.size()]));
                    
                break;

                case 4:
                    
                    System.out.print("Titulo do filme: "); 
                        Titulo = kb.next();

                    assert Titulo!=null:"Titulo invalido";    
                        
                    System.out.println("Categoria do filme: ");
                    System.out.printf("0-Acao %n 1-Camedia %n 2-Infantil %n 3-Drama %n 4-Ficcao Cientifica %n 5-Terror %n 6-Suspanse %n 7-Guerra %n 8-Documentario %n 9-Aventura %n 10-Musical %n %n"); 
                        Categoria = kb.nextInt();

                    assert Categoria>=0 && Categoria<=10:"Categoria invalida";        
                        
                    System.out.printf("0-ALL Ages %n 1-(M6) %n 2-(M12) %n 3-(M16) %n 4-(M18) %n %n");    
                        Idade = kb.nextInt();

                    assert Idade>=0 && Idade<=4:"Categoria invalida";           
                        
                    Video video = new Requesito(Titulo, Categoria, Idade);
                    filmes.addFirst(video.Identificador(),video);

                break;

                case 5:

                    System.out.print("Identificador do filme a remover: "); 
                        Filme_ident = kb.nextInt();

                    assert Filme_ident>0 && filmes.size()>0 && filmes.search(Filme_ident)!=null:"Filme inexistente";      
                        
                    filmes.remover(Filme_ident);

                break;

                case 6:

                    System.out.print("Identificador do filme para verificar disponibilidade: "); 
                        Filme_ident=kb.nextInt();
                    
                        assert filmes.size()>0 && filmes.search(Filme_ident)!=null:"Filme inexistente";
                        
                    System.out.println(
                            filmes.search(Filme_ident).Disponibilidade());

                break;

                case 7:

                    System.out.print("Identificador do filme para requisitar: "); 
                        Filme_ident=kb.nextInt();

                    assert filmes.size()>0 && filmes.search(Filme_ident)!=null:"Filme inexistente";    
                        
                    System.out.print("Numero de socio: "); 
                        Socio_ident=kb.nextInt();
                                              
                    assert (clientes.size()>0 && clientes.search(Socio_ident)!=null )||  (clientes.size()>0 && clientes.search(Socio_ident)!=null )  :"Socio inexistente";    
                    
                    if (clientes.search(Socio_ident)!=null){                            
                        
                        assert clientes.size()>0 && clientes.search(Socio_ident).Videos_Req_Total()<=max_req:"Nao pode Requisitar mais videos";
                        
                        clientes.search(Socio_ident).Videos_Req(); 
                                         
                    }
                    
                    else if(clientes.search(Socio_ident)!=null){
                      
                        assert clientes.size()>0 && clientes.search(Socio_ident).Videos_Req_Total()<=max_req:"Nao pode Requisitar mais videos";

                        clientes.search(Socio_ident).Videos_Req(); 
                        
                    }
                    
                    ((Requesito)filmes.search(Filme_ident)).Requesito(Socio_ident);
                    
                break;    

                case 8:

                    System.out.print("Identificador do filme a devolver: "); 
                        Filme_ident=kb.nextInt();

                    assert filmes.size()>0 && filmes.search(Filme_ident)!=null:"Filme inexistente";
                    assert !"Disponivel".equals(filmes.search(Filme_ident).Disponibilidade()):"Filme nao requisitado";    

                    System.out.print("Rating (1...10): "); 
                        rating=kb.nextDouble();

                    assert rating>=0 && rating<=10:"Classificacao invalida";  

                    ((Requesito)filmes.search(Filme_ident)).Devolucao(rating);

                break;

                case 9:

                    System.out.print("Identificador do filme do qual se pretende ver quem requisitou: ");
                        Filme_ident=kb.nextInt();
                    
                    assert filmes.size()>0 && filmes.search(Filme_ident)!=null:"Filme inexistente";
                    
                    ((Requesito)filmes.search(Filme_ident)).Print_requesitos();

                break;

                case 10:

                    Sort((Requesito[])filmes.print(new Requesito[filmes.size()]));
                        
                break;    
                
                case 11:
                    
                    System.out.print("Numero de socio a procurar requesitos");
                        Socio_ident=kb.nextInt();
                    
                    assert (clientes.size()>0 || clientes.size()>0) &&(clientes.search(Socio_ident)!=null || clientes.search(Socio_ident)!=null)  :"Socio inexistente";    
                    
                    Print_user_requesitos(Socio_ident,(Requesito[])filmes.print(new Requesito[filmes.size()]));
                    
                break;    
                    
            }
       
        }
        
    }
    
}
