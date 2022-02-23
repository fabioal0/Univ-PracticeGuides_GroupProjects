function result=adicionar(b,m,membros)
  
for i=1:m
  
  str=[membros];
  
  h=hash(str,i);
  h=rem(h, length(b));
  b(h)=1;

  end
  
result= b;