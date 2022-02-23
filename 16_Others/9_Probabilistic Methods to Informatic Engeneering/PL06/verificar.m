function result=verificar(b,k,membro)
  
  result=1;
    
  for i=1:k
      
  str=[membro ];
  
  h=hash(str,i);
  h=rem(h, length(b));

      if(b(h)==0)
      result=0;
      break

      end

  end
    