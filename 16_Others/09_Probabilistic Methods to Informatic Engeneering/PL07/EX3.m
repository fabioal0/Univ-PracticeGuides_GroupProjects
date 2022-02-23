original={'qqaz','wwsx','eedc','rrfv','ttgb','yyhn','uujm'};

compare={'qqas','qqaz','ssxc','rrfc','vvft','mmhy'};

individual=zeros(3,1);

individual1=zeros(3,1);

completa=zeros(7,1);

completaCompare=zeros(6,1);

for g=1:length(original),
l=char(original{g});

for j=2:length(l),

individual(j-1,1)=hash(strcat(l(j-1),l(j)),j-1);

end

completa(g,1)=min(individual);

end



for g=1:length(compare),
l=char(compare{g});
for j=2:length(l),

individual1(j-1,1)=hash(strcat(l(j-1),l(j)),j-1);

end

completaCompare(g,1)=min(individual1);

end

f=length(intersect(completa,completaCompare));

d=length(union(completa,completaCompare));

s=f/d