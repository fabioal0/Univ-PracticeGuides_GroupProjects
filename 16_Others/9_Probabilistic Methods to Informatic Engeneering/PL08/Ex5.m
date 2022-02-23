#Ex5

#a)

S = [0.7 0.2 0.3]';
n = [0.2 0.3 0.3]';
c = [0.1 0.5 0.4]';

T = [S n c];

#b)


R = T^2;
Resposta = R(1,3)

#c)
n = 20;

Tr = eye(size(T));

values = zeros(length(T(:)),n);
for(i = 1:20 )
  Tr = T^i;
  values(:,i)=Tr(:);
endfor

#plot(1:n,values)

#d)

Tn = eye(size(T));

values = zeros(length(T(:)),n);
i = 0;
while 1
  Tn1 = T*Tn;
  x = max(abs(Tn1(:)-Tn(:)));
  i++;
  values(:,i)=Tn1(:);
  if x<1e-4
    break
  endif
end

plot(1:i,values)



