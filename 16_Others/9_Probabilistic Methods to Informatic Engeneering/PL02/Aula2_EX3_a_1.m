%T - ter cancro
%N - nao ter cancro
%D - a mamografia ser positiva
%p(T|D) = P(D|T)P(T)/ (P(D|T)P(T) + P(D|N)p(N))
%tic
prob=0.9*(1/10000)/(0.9*(1/10000)+ 0.1* 1-1/10000)

N =1e6;
doente= rand(1,N)<1/1000;
aux= rand(1,N);
darcancro=((aux<0.9)&doente)+((aux<0.1)&(1-doente));

%darcancro=zeros(1,N);
%for i=1:N
 %   if doente(i)==1
 %    
  %     darcancro(i) = rand()<0.9;
  %      
  %   else
  %   
  %    darcancro(i) = rand()<0.1;
  %    
%end   

prob = sum(darcancro & doente)/sum(darcancro)    
%toc
%calcular tempo da simulação tic
%for demora 60*mais qui intrucao simples

%diminuindo a amostra para a ordem dos milhares aumenta a probabilidade
