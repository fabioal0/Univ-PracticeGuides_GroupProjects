## Exercicio 3

M = rand(20,20);

SM = sum(M);

T = M./SM;

for tr=[20,40,100]
  tr
  
  R = T^tr;

  resposta = R(1,20)
end



