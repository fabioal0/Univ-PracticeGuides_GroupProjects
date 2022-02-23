n=1;
prob=0;
N=1e4;
while prob<0.9
n=n+1;
exp = ceil(365*rand(n,N));
contador=0;
for i=1:N
contador=contador+(length(unique(exp(:,i)))<n);

end
prob=contador/N
end