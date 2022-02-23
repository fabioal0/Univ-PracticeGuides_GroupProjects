%%
Casos_Possiveis=
Casos_Favoraveis=
Probabilidade=0.5;
n=0.5;
r=10;
k=10;


p=(nchoosek(k,r)*((n)^r)*((n)^(k-r)))


N= 10e5; 
p = 0.5;
k = 10; 
n = 10; 
lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)==k; %%soma linhas?
probSimulacao= sum(sucessos)/N