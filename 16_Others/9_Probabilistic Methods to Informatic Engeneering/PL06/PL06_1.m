##ex 1,2

membros={'espanha','italia','portugal','qwerty', 'brasil'};
teste={'portugal','polonia','franca','espanha','marrocos'};
m=100;
k=3;
b=zeros(1,m);

for i=1:length(membros)
   b=adicionar(b,k,membros{i});
     
end

for i=1:length(teste)
  ok=verificar(b,k,teste{i});
  
  if(ok==1)
  printf(' %s pertence \n',teste{i})
  
  else
  printf(' %s nao pertence \n',teste{i})
  
  end
 end
 

  ## ex 3.a
    kmembros={'j'};
    kteste={'j'};
    chaves=10000;
    a=0;
  r=8000;
  z=zeros(1,r);
  
  for i=1:1000
  kmembros{i}=gerar();
  end
  
  for i=1:length(kmembros)
   z=adicionar(z,k,kmembros{i});
     
end

  for i=1:length(chaves)
  kteste{i}=gerar();
  end
  
  for i=1:length(kteste)
  ok=verificar(z,k,kteste{i});
  
  if(ok!=0)
  a=a+1;

 end
 end
## sim estava a espera deste resultado uma vez que existem 62^40 possibilidades de strings e 3 hashs (reduz a prob de falso positivo)

 