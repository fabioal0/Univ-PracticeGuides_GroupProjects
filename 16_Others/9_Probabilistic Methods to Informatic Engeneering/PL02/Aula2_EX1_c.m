n=2;
r=0;
k=1;

p=1-(1*(1/n)^r*((1/n)^k-r))

N= 1e5; 
p = 0.5;
k = 1; 
n = 1; 
lancamentos = rand(n,N) > p;
sucessos= lancamentos==k; 
probSimulacao= sum(sucessos)/N