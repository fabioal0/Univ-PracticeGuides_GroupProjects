%% EX1_b

Casos_Possiveis = 2;
Acontecimento   = 0;
Probabilidade   = 0.5;

probabilidade   = 1  - (nchoosek(Casos_Possiveis,Acontecimento)*(Probabilidade)^Acontecimento*((1-Probabilidade)^Casos_Possiveis-Acontecimento))

%% EX1_a

Amostra= 1e5; 
Probabilidade   = 0.5;
Acontecimento   = 0;
Casos_Possiveis = 2;

lancamentos = rand(Casos_Possiveis,Amostra) > Probabilidade;
sucessos= sum(lancamentos)==Acontecimento; 
prob_Simulacao= 1-sum(sucessos)/Amostra

% aproximação centesimas
% valores iguais apos arredondamento

%% EX1_c

Amostra= 1e5; 
Probabilidade   = 0.5;
A_B = 2;
B = 1;
Casos_Possiveis = 2;

lancamentos =rand(Casos_Possiveis,Amostra) > Probabilidade;
result_1 = sum(lancamentos)== A_B;
result_2 = sum(lancamentos)>= B;
sucessos = sum(result_1)/sum(result_2)

% VER
Casos_Possiveis = 2;
Acontecimento   = 0;
Probabilidade   = 0.5;

probabilidade   = 1-(nchoosek(Casos_Possiveis,Acontecimento)*(Probabilidade)^Acontecimento*((1-Probabilidade)^Casos_Possiveis-Acontecimento))

%%EX1_d

Amostra= 1e5; 
Probabilidade   = 0.5;
Acontecimento   = 1;
Casos_Possiveis = 2;

lancamentos = rand(Casos_Possiveis,Amostra) > Probabilidade;
sucessos= lancamentos(2,:) == Acontecimento; 
prob_Simulacao=sum(sucessos)/Amostra

% mesma probabilidade de ser apenas um filho LOGO ACONTECIMENTOS INDEPENDENTES

%%EX1_e

Amostra= 1e5; 
Probabilidade   = 0.5;
A_B = 2;
B = 1;
Casos_Possiveis = 5;

lancamentos = rand(Casos_Possiveis,Amostra) > Probabilidade;
result_1    = sum(lancamentos)== A_B;
result_2    = sum(lancamentos)>= B;
sucessos    = sum(result_1)/sum(result_2)

%%EX1_f

Amostra= 1e5; 
Probabilidade   = 0.5;
A_B = 2;
B = 1;
Casos_Possiveis = 5;

lancamentos = rand(Casos_Possiveis,Amostra) > Probabilidade;
result_1    = sum(lancamentos)>= A_B;
result_2    = sum(lancamentos)>= B;
sucessos    = sum(result_1)/sum(result_2)

%%EX2_a

Amostra         = 1e5; 
Probabilidade   = 0.5;
Acontecimento   = 10;
Casos_Possiveis = 10;

lancamentos = rand(Casos_Possiveis,Amostra) > Probabilidade;
sucessos    = sum(lancamentos)== Acontecimento;
prob_Simulacao=sum(sucessos)/Amostra

%%EX2_b

Amostra         = 1e5; 
Probabilidade   = 0.5;
Acontecimento   = 1;
Casos_Possiveis = 11;

lancamentos = rand(Casos_Possiveis,Amostra) > Probabilidade;
sucessos    = lancamentos(11,:)== Acontecimento;
prob_Simulacao=sum(sucessos)/Amostra

%%EX2_c

Casos_Possiveis = 11;
Acontecimento   = 10;
Acontecimentob  = 11;

