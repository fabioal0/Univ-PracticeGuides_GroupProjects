% Ex1-a)

p=[0.99;0.999;0.9999;0.99999];      % Probability of beeing in the normal state.

ber_nor = 10^(-7);                  % Bit error rate when the link is in the normal state.
ber_int = 10^(-3);                  % Bit error rate when the link is in the interference state.

int = 1-(1-ber_int)^(128*8);        % 1) Probability one control frame is received with errors knowing that the link is in the interference state.
nor = 1-(1-ber_nor)^(128*8);        % 1) Probability one control frame is received with errors knowing that the link is in the normal state.

err = (1.-p).*int + p.*nor;         % 2) Probability of one control frame is received with errors.
                                    
nor_err = nor.*p./err;              % 3) Probability of the link beeing in the normal state knowing that one control frame is received with errors.
int_err = int.*(1-p)./err;          % 3) Probability of the link beeing in the interference state knowing that one control frame is received with errors.

result = [nor_err,int_err]

% 1) P(inter) = 1 - f(0), P(nor) = 1 - f(0)
%    f is a binomial random variable of n = (128 * 8) and p = ber_nor or ber_int depending on the state.
%    f(0) is the probalility of being in the interference state knowing tha 0 bits arrive whith errors.
%
% 2) The probability of an error, P(E), is given by the sum of the 
%    probabilities of getting an error in both states.
%
% 3) Using Bayes Law we know that:
%    P(state | error) = P(error and state) / P(error)
%                     = P(error | state) * P(state) / P(error)

% Result:
%  _________________________________________
% |           | p(normal) | p(interference) |
% |-----------|-----------|-----------------|
% | p=99%     | 0.0156    | 0.9844          |
% | p=99.9%   | 0.1376    | 0.8624          |
% | p=99.99%  | 0.6150    | 0.3850          |
% | p=99.999% | 0.9411    | 0.0589          |
% |___________|___________|_________________|
%
% Conclusion:
% 
%   As theprobability of the link being in the normal state increases, 
% the probability of the link being in the normal state knowing that 
% one control frame is received with errors will increase. Consequently,
% the probability of the link being in the interference state knowing that 
% one control frame is received with errors will decrease.
%   This happen because the probability of being in the interference state
% become so low, that makes the reduced probability of the link being in  
% the normal state knowing that one control frame is received with errors 
% be more probable that the other case refered previously.

% Ex1-b)
format shortE

n=[2,3,4,5];                            % Number of consecutive control frames received with errors needed to decide that the link is in interference state.

pe = ((1.-p).*(int.^n)+p.*(nor.^n));    % 1) Probability of n consecutive control frame is received with errors.

fp = nor.^n.*p./pe                      % 2) Probability of the link beeing in the normal state knowing that n consecutive control frames are received with errors.

% - Probability n control frames are received with errors knowing that the
% link is in one of the states, is equal to the product of the previously 
% mensionated probability by itself n-1 times. In other words P(A)^n.
% 
% - One false positive happen when a station decides wrongly that the link 
% is in interference state. In this case the false positive will happen when 
% the link is in the normal state knowing that n consecutive control frames 
% are received with errors.
%
% 1) The probability of an error, P(E), is given by the sum of the 
%    probabilities of getting an error in both states.
%
% 2) Using Bayes Law we know that:
%    P(state | error) = P(error and state) / P(error)
%                     = P(error | state) * P(state) / P(error)


% Result:
%  ____________________________________________________________________
% |                  Probability of false positives                    |
% |--------------------------------------------------------------------|
% |           |    n = 2     |    n = 3    |    n = 4    |    n = 5    |
% |-----------|--------------|-------------|-------------|-------------|
% | p=99%     |  2.5260e-06  |  4.0349e-10 |  6.4452e-14 |  1.0295e-17 |
% | p=99.9%   |  2.5489e-05  |  4.0716e-09 |  6.5038e-13 |  1.0389e-16 |
% | p=99.99%  |  2.5506e-04  |  4.0753e-08 |  6.5097e-12 |  1.0398e-15 |
% | p=99.999% |  2.5450e-03  |  4.0756e-07 |  6.5102e-11 |  1.0399e-14 |
% |___________|______________|_____________|_____________|_____________|

% Ex1-c)

pne = ((1.-p).*((1-int).^n)+p.*((1-nor).^n));   % 1) Probability of n consecutive control frame is received without errors.

fn = (1-int.^n).*(1.-p)./(1.-pe)                

% - Probability n control frames are received without errors knowing that the
% link is in one of the states, is equal to the product of the previously 
% mensionated probability by itself n-1 times. In other words P(A)^n.
% 
% - One false negative happen when a station decides wrongly that the link 
% is not in the interference state. In this case the false negative will 
% happen when the link is in the normal state knowing that n consecutive 
% control frames are received with errors.
%
% 1) The probability of an error, P(E), is given by the sum of the 
%    probabilities of getting an error in both states.
%
% 2) Using Bayes Law we know that:
%    P(state | error) = P(error and state) / P(error)
%                     = P(error | state) * P(state) / P(error)


% Result:
%  _______________________________________________________________________
% |                    Probability of false negatives                     |
% |-----------------------------------------------------------------------|
% |           |    n = 2     |    n = 3     |    n = 4     |    n = 5     |
% |-----------|--------------|--------------|--------------|--------------|
% | p=99%     |  1.3002e-03  |  4.6717e-04  |  1.6777e-04  |  6.0237e-05  |
% | p=99.9%   |  1.2900e-04  |  4.6316e-05  |  1.6628e-05  |  5.9697e-06  |
% | p=99.99%  |  1.2890e-05  |  4.6276e-06  |  1.6613e-06  |  5.9644e-07  |
% | p=99.999% |  1.2889e-06  |  4.6272e-07  |  1.6612e-07  |  5.9638e-08  |
% |___________|______________|______________|______________|______________|

% Ex2-a)

A_B = 180;
B_C = 40;
C_D = 20;
D_E = 2;
E_D = 5;
D_C = 10;
C_B = 20;
B_A = 1;

A = 1/(1+1/180+1/180*20/40+1/180*20/40*10/20+1/180*20/40*10/20*5/2)
B = (1/180)*A
C = (1/180*20/40)*A
D = (1/180*20/40*10/20)*A
E = (1/180*20/40*10/20*5/2)*A

% Ex2-b)

avg = A*10^-6+B*10^-5+C*10^-4+D*10^-3+E*10^-2 

% Ex2-c)

Am = 60/1
Bm = 60/(20+180)
Cm = 60/(10+40)
Dm = 60/(20+5)
Em = 60/2

% Ex2-d)
inter = D + E

% Ex2-e) BR/I

av = (D*10^-3 + E*10^-2)/ inter

%Ex2-f)

 res=10/50;
 
for i = 1:10
    
    res = res * 5/25 * 1 ; 
end

res    
