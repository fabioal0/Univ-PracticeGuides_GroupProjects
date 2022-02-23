n=2;
r=1;
k=2;

p=(1*(1/n)^r*((1/n)^(k-r)))

N= 1e5; 
p = 0.5;
k = 0; 
n = 2; 
lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)==k; %%soma linhas?
probSimulacao= sum(sucessos)/N