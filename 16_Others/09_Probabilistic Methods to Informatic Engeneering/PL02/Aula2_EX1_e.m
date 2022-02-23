n=2;
r=1;
k=4;

p=(4*(1/n)^r*((1/n)^(k-r)))

N= 1e5; 
p = 0.5;
k = 1; 
n = 4; 
lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)==k; %%soma linhas?
probSimulacao= sum(sucessos)/N

n=2;
r=2;
k=4;

p=(6*(1/n)^r*((1/n)^(k-r)))

N= 1e5; 
p = 0.5;
k = 2; 
n = 4; 
lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)==k; %%soma linhas?
probSimulacao= sum(sucessos)/N