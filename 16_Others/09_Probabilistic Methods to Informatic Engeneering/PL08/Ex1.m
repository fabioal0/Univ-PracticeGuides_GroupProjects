## Exercicio 1

## a)
## veio a aula = V
## faltou a aula = F

##    V   F
## V[0.7 0.8]
## F[0.3 0.2]

H = [0.7 0.8;0.3 0.2];

X = [1;0];

H = H*H;

R = H*X ;
resposta = R(1) ## a resposta e de 73%

## b)

X = [0;1];

R = H*X;
resposta = R(1) ## a resposta e de 72%

## c)

X = [1;0];

H = [0.7 0.8;0.3 0.2];

H = H^29;

R = H*X ;

resposta = R(1) ## a resposta e de 27%

## d)

X = [0.85;0.15];

H = [0.7 0.8;0.3 0.2];

R = zeros(1,30);

R(:,1) = 0.15;

for i=2:30 
  Z = H^i*X;
  R(:,i) = Z(2,:);
end

stem(1:30,R)







