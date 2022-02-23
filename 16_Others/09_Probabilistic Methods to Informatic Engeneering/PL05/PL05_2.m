% PL05
% Daniel Lopes  mec. 87881
% Fábio Alves   mec. 84734

% Exercicio 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
close all;
clc;

% necessário para usar a função randsrc
pkg load communications

media = 10;
variancia = 5;
desvio_padrao = variancia^2;


alfabeto = ['A':'Z' 'a':'z']

fprintf('Carregando ficheiros ...\n')
ficheiros={'pg21209.txt','pg26017.txt'};

fprintf(1,'Obtendo pmf alfabeto portugues...\n')
% obter função massa de probabilidade
pmf_alfabeto=pmfLetrasPT(ficheiros,alfabeto);

% construindo array de 2 linhas com alfabeto e respetivas probabilidades para a funcao randsrc
alfabeto_and_prob = [double(alfabeto); double(pmf_alfabeto)];


n = 1000;
m = round(n/0.8);

contador = zeros(1,m);

for i = 1:n
    % chama a função para gerar uma chave
    chave_gerada = GeradorChave_DistNormal(media, desvio_padrao, alfabeto_and_prob, pmf_alfabeto);
    
    valor = rem(funcaodispersao(chave_gerada), m) + 1;

    contador(valor) = contador(valor) + 1;
    
    if rem(i,25)==0
        subplot(121)
        bar(contador)
        title('Chaining Hash Table ')
        xlabel('Posição')
        ylabel('Strings armazenadas')
        drawnow
        subplot(122)
        hist(contador,0:9)
        title('Histograma')
        drawnow
    end
end

figure(2)
h = histc(contador,0:9);
stem(0:9,h)
grid on

valor_medio = mean(contador);
variancia = var(contador);

fprintf('Valor Medio = %f\n', valor_medio)
fprintf('Variancia = %f\n', variancia)




