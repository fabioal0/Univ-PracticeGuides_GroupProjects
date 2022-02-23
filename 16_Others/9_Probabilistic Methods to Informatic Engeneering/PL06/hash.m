function hash=hash(str,n)
  
  str=double(str);
  
  hash=5381*ones(size(str,1),1);
  
  for i=1:size(str,2),
    hash=mod(hash*(33+n)+str(:,i),2^32-1);
    end
    
end