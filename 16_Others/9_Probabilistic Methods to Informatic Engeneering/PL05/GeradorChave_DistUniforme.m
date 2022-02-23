function [chave_gerada] = GeradorChave_DistUniforme(valor_min, valor_max, alfabeto )

%fprintf('Gerando chave . . .\n')
tamanho_chave = randi([valor_min, valor_max]);

%fprintf('Tamanho da chave: %d\n', tamanho_chave)
chave_gerada = randsrc(1,tamanho_chave,[alfabeto]);

end