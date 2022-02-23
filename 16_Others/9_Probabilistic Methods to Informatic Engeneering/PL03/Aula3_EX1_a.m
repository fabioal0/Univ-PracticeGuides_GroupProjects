%%EX1

%A

x=1:6;
p=ones(1,6)/6;
subplot(221);
stem(x,p),xlabel('face'),ylabel('probabilidade');

%B

x=1:6;
p=cumsum (ones(1,6)/6);
subplot(222);
stairs([0 x 7],[0 p 1]),xlabel('face'),ylabel('probabilidade');

%%EX2

%a)A probabilidade dos acontecimentos elementares e 1/100 =0.01 e o espaco de amostrajem e 100;

%B) espaço de amostrajem = 5 , 50 e 100

x=ones(1,3)*100;
y=[90 9 1];

k=y./x;

prob_5=k(1)
prob_50=k(2)
prob_100=k(3)

%%C

k=1e5;
y=[5 50 100];
m=[ ones(1,90)*5 ones(1,9)*50 ones(1)*100 ]; 
x=m(ceil(rand(1,k)*100));

p=histc(x,y)/k;
subplot(223);
stem(y,p)


%%4

%B

N=1e7;
C=5;
m=2;

array= rand(C,N)<=0.5;
prob=sum (array)<=m;
prob_fin=prob/N