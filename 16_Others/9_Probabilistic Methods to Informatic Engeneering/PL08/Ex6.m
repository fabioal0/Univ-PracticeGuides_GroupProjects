#Ex6

#a)

M1 = [0.8 0.2 0 0]';
M2 = [0 0.9 0.1 0]';
M3 = [0.3 0.2 0.4 0.1]';
M4 = [0 0 0 1]';

H = [M1 M2 M3 M4];

#b)

x0 = [1 0 0 0]';

R = H^1000*x0;

Resposta = R(2)

#c)

for(n = [1,2,3,100])
  R = M^n 
end

#d)

Q = M(1:3,1:3)  

#e)

F = inv(eye(size(Q))-Q)

#f) e g)

Pag1 = sum(F(:,1))
Pag2 = sum(F(:,2))
Pag3 = sum(F(:,3))

#h)

H1 = [H(:,1:2) [33/100 33/100 33/100 1/100]' H(:,4)]



