#Ex7

M = [[0.8 0.2 0]' [0.1 0.6 0.3]' [0.05 0.2 0.75]']


x0 = [100 200 30]'
#a)

R = M^3*x0;

Ana = R(1)
Bernardo = R(2)
Catarina = R(3)

#b)

tr = 365;

R = M^tr * x0;

Ana = R(1)
Bernardo = R(2)
Catarina = R(3)


#c)

dia=0;
Tn=M;

while 1
  dia=dia+1;
  R = Tn*x0;
  if(R(3)>130)
    break
  endif
  Tn=M*Tn;
end

dia
