N= 1e5; 
p = 0.5;
n = 15; 
lancamentos = rand(n,N) > p;
for k=0:5,
sucessos= sum(lancamentos)==k; %%soma linhas?
end
probSimulacao= 1-(sum(sucessos)/N)
