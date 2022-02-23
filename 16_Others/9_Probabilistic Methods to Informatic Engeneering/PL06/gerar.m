function result=gerar()
  
alfabeto = ['A':'Z' 'a':'z' '0':'9'];
result='';
for i=1:40
  
  
  result= strcat(result,alfabeto(randi(length(alfabeto))));

  
end  
