
x = linspace(0,100,100);
y1=x./(x+1/3.*(100.-x)).*100;
y2=x./(x+1/4.*(100.-x)).*100;
y3=x./(x+1/5.*(100.-x)).*100;
figure('Name','Ex_d')
l=plot(x,y1,'r-',x,y2,'g--',x,y3,'b:');
l(1).LineWidth = 2;
l(2).LineWidth = 2;
l(3).LineWidth = 2;
title('Probability of knowing the answer (%)')
xlabel('p(%)')
legend('n=3','n=4','n=5','location','northwest')
axis([0 100 0 100])
grid on

