function [chave_gerada] = GeradorChave_DistNormal(media, desvio_padrao, alfabeto_and_prob, pmf_alfabeto);
  
 
%fprintf('Gerando chave . . .\n')

tamanho_chave = round(sqrt(desvio_padrao)*randn + media);

%fprintf('Tamanho da chave: %d\n', tamanho_chave)



chave_gerada = randsrc(1,tamanho_chave,[alfabeto_and_prob]);  

end