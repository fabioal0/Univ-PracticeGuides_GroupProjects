% C´odigo base para gui˜ao PL07 MPEI 2017-2018
udata=load('u.data'); % Carrega o ficheiro dos dados dos filmes
% Fica apenas com as duas primeiras colunas
u= udata(1:end,1:2); clear udata;
% Lista de utilizadores
users = unique(u(:,1)); % Extrai os IDs dos utilizadores
Nu= length(users); % N´umero de utilizadores
% Constr´oi a lista de filmes para cada utilizador
Set= cell(Nu,1); % Usa c´elulas
for n = 1:Nu, % Para cada utilizador
% Obt´em os filmes de cada um
ind = find(u(:,1) == users(n));
% E guarda num array. Usa c´elulas porque utilizador tem um n´umero
% diferente de filmes. Se fossem iguais podia ser um array
Set{n} = [Set{n} u(ind,2)];

end


J=zeros(Nu); % array para guardar distˆancias
h= waitbar(0,'Calculating');
for n1= 1:Nu,
waitbar(n1/Nu,h);
for n2= n1+1:Nu,

a=length(intersect(Set{n1},Set{n2}));
J(n1,n2)=1-a/(length(Set{n1})+length(Set{n2})-a);

end

end
delete(h)
save matrizJ J;
load matrizJ;
%% Com base na distˆancia, determina pares com
%% distˆancia inferior a um limiar pr´e-definido
threshold =0.4 % limiar de decis˜ao
% Array para guardar pares similares (user1, user2, distˆancia)
SimilarUsers= zeros(1,3);
k= 1;
for n1= 1:Nu,
for n2= n1+1:Nu,
if J(n1,n2)<0,4

SimilarUsers(1,1)=n1;
SimilarUsers(1,2)=n2;
SimilarUsers(1,3)=J(n1,n2);

SimilarUsers(k,:)= [users(n1) users(n2) J(n1,n2)]
k= k+1;
end
end
end

%% n hashes aplicadas a cada linha(minimo das hashs) da coluna
