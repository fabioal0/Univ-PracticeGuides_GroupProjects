import java.lang.String;

public class p66 {
	
	public static void main (String[] args) {
	
	double M,P;
	int n,T;
	
	n=Integer.parseInt(args[0]);
	M=Double.parseDouble(args[1]);
	T=Integer.parseInt(args[2]);
	P=Double.parseDouble(args[3]);
}
	public static double m_iter(int n,double M,int T,double P) {
	
	double D=-1;
	
	while(D>0){ 
	D=(M+M*T*0.01-P)*n;
	}
	
	return D;
	}
	
	public static double m_rec(int n,double M,int T,double P) {	

	 m_rec(n-1, M*(1+T/100-P), T, P);
	 return M;
	}
}

