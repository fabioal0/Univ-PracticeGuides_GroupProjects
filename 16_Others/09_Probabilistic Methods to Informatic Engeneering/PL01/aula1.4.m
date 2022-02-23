n=20

prob=zeros(1,n+1)

for k= 0:n ,
  
prob(k+1)=alfa(k,n);

end

prob
stem(0:n,prob)