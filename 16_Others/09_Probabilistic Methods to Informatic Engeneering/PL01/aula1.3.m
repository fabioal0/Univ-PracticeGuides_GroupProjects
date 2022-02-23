
p = 0.5;
n = 15;
proba=0;

for k=0:5,
  
proba=proba+ factorial(n)/(factorial(n-k)*factorial(k))*p^k*(1-p)^(n-k);
end

final=1-proba
