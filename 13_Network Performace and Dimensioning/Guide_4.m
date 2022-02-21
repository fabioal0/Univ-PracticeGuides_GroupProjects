% Recolher resultados

Result = zeros(8,4);
Conf = zeros(8,4);

Case = zeros(10,4);

C=2;
 
for f = [10 1]
    for lambda = [1 2]

         for k = 1:10
            [PL , APD , MPD , TT] = Simulator1(lambda*100,C,f*10000,1000);
            Case(k,1) = PL;
            Case(k,2) = APD;
            Case(k,3) = MPD;
            Case(k,4) = TT;
                        
         end
         
         if f== 10
            Result(lambda , 1) = mean(Case(:,1));
            Conf(lambda , 1) = 1.645*std(Case(:, 1))/sqrt(10);

         else
            Result(lambda + 2, 1) = mean(Case(:,1));
            Conf(lambda + 2, 1) = 1.645*std(Case(:, 1))/sqrt(10);
         end
         
         if f== 10
            Result(lambda , 2) = mean(Case(:,2));
            Conf(lambda , 2) = 1.645*std(Case(:, 2))/sqrt(10);
         else
            Result(lambda + 2, 2) = mean(Case(:,2));
            Conf(lambda + 2, 2) = 1.645*std(Case(:, 2))/sqrt(10);
         end
         
         if f== 10
            Result(lambda , 3) = mean(Case(:,3));
            Conf(lambda , 3) = 1.645*std(Case(:, 3))/sqrt(10);
         else
            Result(lambda + 2, 3) = mean(Case(:,3));
            Conf(lambda + 2, 3) = 1.645*std(Case(:, 3))/sqrt(10);
         end
         
         if f== 10
            Result(lambda , 4) = mean(Case(:,4));
            Conf(lambda , 4) = 1.645*std(Case(:, 4))/sqrt(10);
         else
            Result(lambda + 2, 4) = mean(Case(:,4));
            Conf(lambda + 2, 4) = 1.645*std(Case(:, 4))/sqrt(10);
         end

        Result
        Conf
     end
end
 
C=10;
 
for f = [10 1]
    for lambda = [1 2]

         for k = 1:10
            [PL , APD , MPD , TT] = Simulator1(lambda*500,C,f*10000,1000);
            Case(k,1) = PL;
            Case(k,2) = APD;
            Case(k,3) = MPD;
            Case(k,4) = TT;
                        
         end
         
         if f== 10
            Result(4+lambda , 1) = mean(Case(:,1));
            Conf(4+lambda , 1) = 1.645*std(Case(:, 1))/sqrt(10);

         else
            Result(4+lambda + 2, 1) = mean(Case(:,1));
            Conf(4+lambda + 2, 1) = 1.645*std(Case(:, 1))/sqrt(10);
         end
         
         if f== 10
            Result(4+lambda , 2) = mean(Case(:,2));
            Conf(4+lambda , 2) = 1.645*std(Case(:, 2))/sqrt(10);
         else
            Result(4+lambda + 2, 2) = mean(Case(:,2));
            Conf(4+lambda + 2, 2) = 1.645*std(Case(:, 2))/sqrt(10);
         end
         
         if f== 10
            Result(4+lambda , 3) = mean(Case(:,3));
            Conf(4+lambda , 3) = 1.645*std(Case(:, 3))/sqrt(10);
         else
            Result(4+lambda + 2, 3) = mean(Case(:,3));
            Conf(4+lambda + 2, 3) = 1.645*std(Case(:, 3))/sqrt(10);
         end
         
         if f== 10
            Result(4+lambda , 4) = mean(Case(:,4));
            Conf(4+lambda , 4) = 1.645*std(Case(:, 4))/sqrt(10);
         else
            Result(4+lambda + 2, 4) = mean(Case(:,4));
            Conf(4+lambda + 2, 4) = 1.645*std(Case(:, 4))/sqrt(10);
         end

        Result
        Conf
     end
 end
 
 % a)
 %
 % 
 % Result =
 %          0    4.5325   21.1285    0.6631
 %          0    8.1120   40.6979    1.3211
 %          0    4.5074   19.9066    0.6666
 %     0.0298    8.1241   34.3459    1.3425
 %          0    0.9138    4.2207    3.3523
 %          0    1.5877    7.4800    6.6478
 %          0    0.9214    4.1100    3.3485
 %     0.0697    1.6662    7.7309    6.6127
 % 
 % 
 % Conf =
 % 
 %          0    0.0715    2.0428    0.0117
 %          0    0.7347    7.2288    0.0271
 %          0    0.0830    1.3235    0.0109
 %     0.0349    0.3027    2.9224    0.0258
 %          0    0.0227    0.6896    0.0276
 %          0    0.0854    0.9434    0.1246
 %          0    0.0175    0.1860    0.0811
 %     0.0427    0.0948    0.4372    0.1293
 % 
 
 %%
 
 % Recolher resultados

Result = zeros(8,4);
Conf = zeros(8,4);

Case = zeros(10,4);

C=2;
 
for f = [10 1]
    for lambda = [1 2]

         for k = 1:10
            [PL , APD , MPD , TT] = Simulator1(lambda*100,C,f*10000,100000);
            Case(k,1) = PL;
            Case(k,2) = APD;
            Case(k,3) = MPD;
            Case(k,4) = TT;
                        
         end
         
         if f== 10
            Result(lambda , 1) = mean(Case(:,1));
            Conf(lambda , 1) = 1.645*std(Case(:, 1))/sqrt(10);

         else
            Result(lambda + 2, 1) = mean(Case(:,1));
            Conf(lambda + 2, 1) = 1.645*std(Case(:, 1))/sqrt(10);
         end
         
         if f== 10
            Result(lambda , 2) = mean(Case(:,2));
            Conf(lambda , 2) = 1.645*std(Case(:, 2))/sqrt(10);
         else
            Result(lambda + 2, 2) = mean(Case(:,2));
            Conf(lambda + 2, 2) = 1.645*std(Case(:, 2))/sqrt(10);
         end
         
         if f== 10
            Result(lambda , 3) = mean(Case(:,3));
            Conf(lambda , 3) = 1.645*std(Case(:, 3))/sqrt(10);
         else
            Result(lambda + 2, 3) = mean(Case(:,3));
            Conf(lambda + 2, 3) = 1.645*std(Case(:, 3))/sqrt(10);
         end
         
         if f== 10
            Result(lambda , 4) = mean(Case(:,4));
            Conf(lambda , 4) = 1.645*std(Case(:, 4))/sqrt(10);
         else
            Result(lambda + 2, 4) = mean(Case(:,4));
            Conf(lambda + 2, 4) = 1.645*std(Case(:, 4))/sqrt(10);
         end

        Result
        Conf
     end
end
 
C=10;
 
for f = [10 1]
    for lambda = [1 2]

         for k = 1:10
            [PL , APD , MPD , TT] = Simulator1(lambda*500,C,f*10000,100000);
            Case(k,1) = PL;
            Case(k,2) = APD;
            Case(k,3) = MPD;
            Case(k,4) = TT;
                        
         end
         
         if f== 10
            Result(4+lambda , 1) = mean(Case(:,1));
            Conf(4+lambda , 1) = 1.645*std(Case(:, 1))/sqrt(10);

         else
            Result(4+lambda + 2, 1) = mean(Case(:,1));
            Conf(4+lambda + 2, 1) = 1.645*std(Case(:, 1))/sqrt(10);
         end
         
         if f== 10
            Result(4+lambda , 2) = mean(Case(:,2));
            Conf(4+lambda , 2) = 1.645*std(Case(:, 2))/sqrt(10);
         else
            Result(4+lambda + 2, 2) = mean(Case(:,2));
            Conf(4+lambda + 2, 2) = 1.645*std(Case(:, 2))/sqrt(10);
         end
         
         if f== 10
            Result(4+lambda , 3) = mean(Case(:,3));
            Conf(4+lambda , 3) = 1.645*std(Case(:, 3))/sqrt(10);
         else
            Result(4+lambda + 2, 3) = mean(Case(:,3));
            Conf(4+lambda + 2, 3) = 1.645*std(Case(:, 3))/sqrt(10);
         end
         
         if f== 10
            Result(4+lambda , 4) = mean(Case(:,4));
            Conf(4+lambda , 4) = 1.645*std(Case(:, 4))/sqrt(10);
         else
            Result(4+lambda + 2, 4) = mean(Case(:,4));
            Conf(4+lambda + 2, 4) = 1.645*std(Case(:, 4))/sqrt(10);
         end

        Result
        Conf
     end
 end
 
 % c)
 %
 %
 %  Result =
 % 
 %          0    4.5427   33.1476    0.6672
 %          0    8.1624   66.2101    1.3368
 %     0.0001    4.5365   32.8349    0.6664
 %     0.0566    8.0859   44.5696    1.3328
 %          0    0.9092    6.4303    3.3398
 %          0    1.6454   13.6000    6.6935
 %          0    0.9091    6.4043    3.3365
 %     0.0570    1.6218    8.8432    6.6747
 % 
 % 
 % Conf =
 % 
 %          0    0.0089    1.3032    0.0012
 %          0    0.0394    4.7449    0.0039
 %     0.0002    0.0111    1.6498    0.0016
 %     0.0066    0.0573    0.2826    0.0016
 %          0    0.0017    0.2974    0.0032
 %          0    0.0104    0.5910    0.0112
 %          0    0.0014    0.2382    0.0062
 %     0.0037    0.0057    0.0928    0.0085
 %
 %
 
 %%
  
 % Recolher resultados

Result = zeros(8,4);
Conf = zeros(8,4);

Case = zeros(1000,4);

C=2;
 
for f = [10 1]
    for lambda = [1 2]

         for k = 1:1000
            [PL , APD , MPD , TT] = Simulator1(lambda*100,C,f*10000,1000);
            Case(k,1) = PL;
            Case(k,2) = APD;
            Case(k,3) = MPD;
            Case(k,4) = TT;
                        
         end
         
         if f== 10
            Result(lambda , 1) = mean(Case(:,1));
            Conf(lambda , 1) = 1.645*std(Case(:, 1))/sqrt(1000);

         else
            Result(lambda + 2, 1) = mean(Case(:,1));
            Conf(lambda + 2, 1) = 1.645*std(Case(:, 1))/sqrt(1000);
         end
         
         if f== 10
            Result(lambda , 2) = mean(Case(:,2));
            Conf(lambda , 2) = 1.645*std(Case(:, 2))/sqrt(1000);
         else
            Result(lambda + 2, 2) = mean(Case(:,2));
            Conf(lambda + 2, 2) = 1.645*std(Case(:, 2))/sqrt(1000);
         end
         
         if f== 10
            Result(lambda , 3) = mean(Case(:,3));
            Conf(lambda , 3) = 1.645*std(Case(:, 3))/sqrt(1000);
         else
            Result(lambda + 2, 3) = mean(Case(:,3));
            Conf(lambda + 2, 3) = 1.645*std(Case(:, 3))/sqrt(1000);
         end
         
         if f== 10
            Result(lambda , 4) = mean(Case(:,4));
            Conf(lambda , 4) = 1.645*std(Case(:, 4))/sqrt(1000);
         else
            Result(lambda + 2, 4) = mean(Case(:,4));
            Conf(lambda + 2, 4) = 1.645*std(Case(:, 4))/sqrt(1000);
         end

        Result
        Conf
     end
end
 
C=10;
 
for f = [10 1]
    for lambda = [1 2]

         for k = 1:1000
            [PL , APD , MPD , TT] = Simulator1(lambda*500,C,f*10000,1000);
            Case(k,1) = PL;
            Case(k,2) = APD;
            Case(k,3) = MPD;
            Case(k,4) = TT;
                        
         end
         
         if f== 10
            Result(4+lambda , 1) = mean(Case(:,1));
            Conf(4+lambda , 1) = 1.645*std(Case(:, 1))/sqrt(1000);

         else
            Result(4+lambda + 2, 1) = mean(Case(:,1));
            Conf(4+lambda + 2, 1) = 1.645*std(Case(:, 1))/sqrt(1000);
         end
         
         if f== 10
            Result(4+lambda , 2) = mean(Case(:,2));
            Conf(4+lambda , 2) = 1.645*std(Case(:, 2))/sqrt(1000);
         else
            Result(4+lambda + 2, 2) = mean(Case(:,2));
            Conf(4+lambda + 2, 2) = 1.645*std(Case(:, 2))/sqrt(1000);
         end
         
         if f== 10
            Result(4+lambda , 3) = mean(Case(:,3));
            Conf(4+lambda , 3) = 1.645*std(Case(:, 3))/sqrt(1000);
         else
            Result(4+lambda + 2, 3) = mean(Case(:,3));
            Conf(4+lambda + 2, 3) = 1.645*std(Case(:, 3))/sqrt(1000);
         end
         
         if f== 10
            Result(4+lambda , 4) = mean(Case(:,4));
            Conf(4+lambda , 4) = 1.645*std(Case(:, 4))/sqrt(1000);
         else
            Result(4+lambda + 2, 4) = mean(Case(:,4));
            Conf(4+lambda + 2, 4) = 1.645*std(Case(:, 4))/sqrt(1000);
         end

        Result
        Conf
     end
 end
 
 % d)
 %
 %
 % Result =
 % 
 %          0    4.5509   20.7031    0.6687
 %          0    8.1785   38.5879    1.3368
 %          0    4.5465   20.9580    0.6683
 %     0.0551    8.0629   36.2143    1.3338
 %          0    0.9082    4.1749    3.3401
 %          0    1.6297    7.6590    6.6695
 %          0    0.9086    4.1323    3.3421
 %     0.0578    1.6170    7.2386    6.6633
 % 
 % 
 % Conf =
 % 
 %          0    0.0089    0.1688    0.0013
 %          0    0.0478    0.4426    0.0026
 %          0    0.0090    0.1807    0.0013
 %     0.0060    0.0413    0.2553    0.0027
 %          0    0.0018    0.0381    0.0066
 %          0    0.0100    0.0881    0.0137
 %          0    0.0018    0.0351    0.0064
 %     0.0063    0.0086    0.0521    0.0133
 %
 
 %%
   % Simulador 2
 
 %%
 % Recolher resultados

 
Result = zeros(12,4);
Conf = zeros(12,4);

ResultVoip = zeros(12,4);
ConfVoip = zeros(12,4);

Case = zeros(10,7);

lambda = 2; 

for f = [10 1]
    for n = [5 10 15]

         for k = 1:10
            [PL, PLvoip, APD, APDvoip, MPD ,MPDvoip ,TT] = sim2(lambda*100,2,f*10000,100000,n);
            Case(k,1) = PL;
            Case(k,2) = PLvoip;
            Case(k,3) = APD;
            Case(k,4) = APDvoip;
            Case(k,5) = MPD;
            Case(k,6) = MPDvoip;
            Case(k,7) = TT
         end

         %PL

         if f== 10
            Result(n/5 + 3*0 + 7*0, 1) = mean(Case(:,1));
            ResultVoip(n/5 + 3*0 + 7*0 , 1) = mean(Case(:,2));
            Conf(n/5 + 3*0 + 7*0 , 1) = 1.645*std(Case(:, 1))/sqrt(10);
            ConfVoip(n/5 + 3*0 + 7*0 , 1) = 1.645*std(Case(:, 2))/sqrt(10);
         else
            Result(n/5 + 3*1 + 7*0, 1) = mean(Case(:,1));
            ResultVoip(n/5 + 3*1 + 7*0, 1) = mean(Case(:,2));
            Conf(n/5 + 3*1 + 7*0, 1) = 1.645*std(Case(:, 1))/sqrt(10);
            ConfVoip(n/5 + 3*1 + 7*0, 1) = 1.645*std(Case(:, 2))/sqrt(10);
         end

        %ADD
     
         if f== 10
            Result(n/5 + 3*0 + 7*0, 2) = mean(Case(:,3));
            ResultVoip(n/5 + 3*0 + 7*0 , 2) = mean(Case(:,4));
            Conf(n/5 + 3*0 + 7*0 , 2) = 1.645*std(Case(:, 3))/sqrt(10);
            ConfVoip(n/5 + 3*0 + 7*0 , 2) = 1.645*std(Case(:, 4))/sqrt(10);
         else
            Result(n/5 + 3*1 + 7*0, 2) = mean(Case(:,3));
            ResultVoip(n/5 + 3*1 + 7*0, 2) = mean(Case(:,4));
            Conf(n/5 + 3*1 + 7*0, 2) = 1.645*std(Case(:, 3))/sqrt(10);
            ConfVoip(n/5 + 3*1 + 7*0, 2) = 1.645*std(Case(:, 4))/sqrt(10);
         end
         
         %MDA
         
         if f== 10
            Result(n/5 + 3*0 + 7*0, 3) = mean(Case(:,5));
            ResultVoip(n/5 + 3*0 + 7*0 , 3) = mean(Case(:,6));
            Conf(n/5 + 3*0 + 7*0 , 3) = 1.645*std(Case(:, 5))/sqrt(10);
            ConfVoip(n/5 + 3*0 + 7*0 , 3) = 1.645*std(Case(:, 6))/sqrt(10);
         else
            Result(n/5 + 3*1 + 7*0, 3) = mean(Case(:,5));
            ResultVoip(n/5 + 3*1 + 7*0, 3) = mean(Case(:,6));
            Conf(n/5 + 3*1 + 7*0, 3) = 1.645*std(Case(:, 5))/sqrt(10);
            ConfVoip(n/5 + 3*1 + 7*0, 3) = 1.645*std(Case(:, 6))/sqrt(10);
         end
         
         %TT
         
         if f== 10
            Result(n/5 + 3*0 + 7*0, 4) = mean(Case(:,7));
            Conf(n/5 + 3*0 + 7*0 , 4) = 1.645*std(Case(:, 7))/sqrt(10);
         else
            Result(n/5 + 3*1 + 7*0, 4) = mean(Case(:,7));
            Conf(n/5 + 3*1 + 7*0, 4) = 1.645*std(Case(:, 7))/sqrt(10);
         end
         
        Result
        Conf
        ResultVoip
        ConfVoip
     end
end


lambda = 10 ;

for f = [10 1]
    for n = [25 50 75]

         for k = 1:10
            [PL, PLvoip, APD, APDvoip, MPD ,MPDvoip ,TT] = sim2(lambda*100,10,f*10000,100000,n);
            Case(k,1) = PL;
            Case(k,2) = PLvoip;
            Case(k,3) = APD;
            Case(k,4) = APDvoip;
            Case(k,5) = MPD;
            Case(k,6) = MPDvoip;
            Case(k,7) = TT;
         end

         %PL

         if f== 10
            Result(n/25 + 3*0 + 7*1, 1) = mean(Case(:,1));
            ResultVoip(n/25 + 3*1 + 7*0 , 1) = mean(Case(:,2));
            Conf(n/25 + 3*0 + 7*1 , 1) = 1.645*std(Case(:, 1))/sqrt(10);
            ConfVoip(n/25 + 3*1 + 7*0 , 1) = 1.645*std(Case(:, 2))/sqrt(10);
         else
            Result(n/25 + 3*1 + 7*1, 1) = mean(Case(:,1));
            ResultVoip(n/25 + 3*1 + 7*1, 1) = mean(Case(:,2));
            Conf(n/25 + 3*1 + 7*1, 1) = 1.645*std(Case(:, 1))/sqrt(10);
            ConfVoip(n/25 + 3*1 + 7*1, 1) = 1.645*std(Case(:, 2))/sqrt(10);
         end

        %ADD
     
         if f== 10
            Result(n/25 + 3*0 + 7*1, 2) = mean(Case(:,3));
            ResultVoip(n/25 + 3*0 + 7*1 , 2) = mean(Case(:,4));
            Conf(n/25 + 3*0 + 7*1 , 2) = 1.645*std(Case(:, 3))/sqrt(10);
            ConfVoip(n/25 + 3*0 + 7*1 , 2) = 1.645*std(Case(:, 4))/sqrt(10);
         else
            Result(n/25 + 3*1 + 7*1, 2) = mean(Case(:,3));
            ResultVoip(n/25 + 3*1 + 7*1, 2) = mean(Case(:,4));
            Conf(n/25 + 3*1 + 7*1, 2) = 1.645*std(Case(:, 3))/sqrt(10);
            ConfVoip(n/25 + 3*1 + 7*1, 2) = 1.645*std(Case(:, 4))/sqrt(10);
         end
         
         %MDA
         
         if f== 10
            Result(n/25 + 3*0 + 7*1, 3) = mean(Case(:,5));
            ResultVoip(n/25 + 3*0 + 7*1 , 3) = mean(Case(:,6));
            Conf(n/25 + 3*0 + 7*1 , 3) = 1.645*std(Case(:, 5))/sqrt(10);
            ConfVoip(n/25 + 3*0 + 7*1 , 3) = 1.645*std(Case(:, 6))/sqrt(10);
         else
            Result(n/25 + 3*1 + 7*1, 3) = mean(Case(:,5));
            ResultVoip(n/25 + 3*1 + 7*1, 3) = mean(Case(:,6));
            Conf(n/25 + 3*1 + 7*1, 3) = 1.645*std(Case(:, 5))/sqrt(10);
            ConfVoip(n/25 + 3*1 + 7*1, 3) = 1.645*std(Case(:, 6))/sqrt(10);
         end
         
         %TT
         
         if f== 10
            Result(n/25 + 3*0 + 7*1, 4) = mean(Case(:,7));
            Conf(n/25 + 3*0 + 7*1 , 4) = 1.645*std(Case(:, 7))/sqrt(10);
         else
            Result(n/25 + 3*1 + 7*1, 4) = mean(Case(:,7));
            Conf(n/25 + 3*1 + 7*1, 4) = 1.645*std(Case(:, 7))/sqrt(10);
         end
         
        Result
        Conf
        ResultVoip
        ConfVoip
     end
end

%%
   % Simulador 3
 
 %%
 % Recolher resultados

 
Result = zeros(12,4);
Conf = zeros(12,4);

ResultVoip = zeros(12,4);
ConfVoip = zeros(12,4);

Case = zeros(10,7);

lambda = 2; 

for f = [10 1]
    for n = [5 10 15]

         for k = 1:10
            [PL, PLvoip, APD, APDvoip, MPD ,MPDvoip ,TT] = sim3(lambda*100,2,f*10000,100000,n);
            Case(k,1) = PL;
            Case(k,2) = PLvoip;
            Case(k,3) = APD;
            Case(k,4) = APDvoip;
            Case(k,5) = MPD;
            Case(k,6) = MPDvoip;
            Case(k,7) = TT;
         end

         %PL

         if f== 10
            Result(n/5 + 3*0 + 7*0, 1) = mean(Case(:,1));
            ResultVoip(n/5 + 3*0 + 7*0 , 1) = mean(Case(:,2));
            Conf(n/5 + 3*0 + 7*0 , 1) = 1.645*std(Case(:, 1))/sqrt(10);
            ConfVoip(n/5 + 3*0 + 7*0 , 1) = 1.645*std(Case(:, 2))/sqrt(10);
         else
            Result(n/5 + 3*1 + 7*0, 1) = mean(Case(:,1));
            ResultVoip(n/5 + 3*1 + 7*0, 1) = mean(Case(:,2));
            Conf(n/5 + 3*1 + 7*0, 1) = 1.645*std(Case(:, 1))/sqrt(10);
            ConfVoip(n/5 + 3*1 + 7*0, 1) = 1.645*std(Case(:, 2))/sqrt(10);
         end

        %ADD
     
         if f== 10
            Result(n/5 + 3*0 + 7*0, 2) = mean(Case(:,3));
            ResultVoip(n/5 + 3*0 + 7*0 , 2) = mean(Case(:,4));
            Conf(n/5 + 3*0 + 7*0 , 2) = 1.645*std(Case(:, 3))/sqrt(10);
            ConfVoip(n/5 + 3*0 + 7*0 , 2) = 1.645*std(Case(:, 4))/sqrt(10);
         else
            Result(n/5 + 3*1 + 7*0, 2) = mean(Case(:,3));
            ResultVoip(n/5 + 3*1 + 7*0, 2) = mean(Case(:,4));
            Conf(n/5 + 3*1 + 7*0, 2) = 1.645*std(Case(:, 3))/sqrt(10);
            ConfVoip(n/5 + 3*1 + 7*0, 2) = 1.645*std(Case(:, 4))/sqrt(10);
         end
         
         %MDA
         
         if f== 10
            Result(n/5 + 3*0 + 7*0, 3) = mean(Case(:,5));
            ResultVoip(n/5 + 3*0 + 7*0 , 3) = mean(Case(:,6));
            Conf(n/5 + 3*0 + 7*0 , 3) = 1.645*std(Case(:, 5))/sqrt(10);
            ConfVoip(n/5 + 3*0 + 7*0 , 3) = 1.645*std(Case(:, 6))/sqrt(10);
         else
            Result(n/5 + 3*1 + 7*0, 3) = mean(Case(:,5));
            ResultVoip(n/5 + 3*1 + 7*0, 3) = mean(Case(:,6));
            Conf(n/5 + 3*1 + 7*0, 3) = 1.645*std(Case(:, 5))/sqrt(10);
            ConfVoip(n/5 + 3*1 + 7*0, 3) = 1.645*std(Case(:, 6))/sqrt(10);
         end
         
         %TT
         
         if f== 10
            Result(n/5 + 3*0 + 7*0, 4) = mean(Case(:,7));
            Conf(n/5 + 3*0 + 7*0 , 4) = 1.645*std(Case(:, 7))/sqrt(10);
         else
            Result(n/5 + 3*1 + 7*0, 4) = mean(Case(:,7));
            Conf(n/5 + 3*1 + 7*0, 4) = 1.645*std(Case(:, 7))/sqrt(10);
         end
         
        Result
        Conf
        ResultVoip
        ConfVoip
     end
end


lambda = 10 ;

for f = [10 1]
    for n = [25 50 75]

         for k = 1:10
            [PL, PLvoip, APD, APDvoip, MPD ,MPDvoip ,TT] = sim3(lambda*100,10,f*10000,100000,n);
            Case(k,1) = PL;
            Case(k,2) = PLvoip;
            Case(k,3) = APD;
            Case(k,4) = APDvoip;
            Case(k,5) = MPD;
            Case(k,6) = MPDvoip;
            Case(k,7) = TT;
         end

         %PL

         if f== 10
            Result(n/25 + 3*0 + 7*1, 1) = mean(Case(:,1));
            ResultVoip(n/25 + 3*1 + 7*0 , 1) = mean(Case(:,2));
            Conf(n/25 + 3*0 + 7*1 , 1) = 1.645*std(Case(:, 1))/sqrt(10);
            ConfVoip(n/25 + 3*1 + 7*0 , 1) = 1.645*std(Case(:, 2))/sqrt(10);
         else
            Result(n/25 + 3*1 + 7*1, 1) = mean(Case(:,1));
            ResultVoip(n/25 + 3*1 + 7*1, 1) = mean(Case(:,2));
            Conf(n/25 + 3*1 + 7*1, 1) = 1.645*std(Case(:, 1))/sqrt(10);
            ConfVoip(n/25 + 3*1 + 7*1, 1) = 1.645*std(Case(:, 2))/sqrt(10);
         end

        %ADD
     
         if f== 10
            Result(n/25 + 3*0 + 7*1, 2) = mean(Case(:,3));
            ResultVoip(n/25 + 3*0 + 7*1 , 2) = mean(Case(:,4));
            Conf(n/25 + 3*0 + 7*1 , 2) = 1.645*std(Case(:, 3))/sqrt(10);
            ConfVoip(n/25 + 3*0 + 7*1 , 2) = 1.645*std(Case(:, 4))/sqrt(10);
         else
            Result(n/25 + 3*1 + 7*1, 2) = mean(Case(:,3));
            ResultVoip(n/25 + 3*1 + 7*1, 2) = mean(Case(:,4));
            Conf(n/25 + 3*1 + 7*1, 2) = 1.645*std(Case(:, 3))/sqrt(10);
            ConfVoip(n/25 + 3*1 + 7*1, 2) = 1.645*std(Case(:, 4))/sqrt(10);
         end
         
         %MDA
         
         if f== 10
            Result(n/25 + 3*0 + 7*1, 3) = mean(Case(:,5));
            ResultVoip(n/25 + 3*0 + 7*1 , 3) = mean(Case(:,6));
            Conf(n/25 + 3*0 + 7*1 , 3) = 1.645*std(Case(:, 5))/sqrt(10);
            ConfVoip(n/25 + 3*0 + 7*1 , 3) = 1.645*std(Case(:, 6))/sqrt(10);
         else
            Result(n/25 + 3*1 + 7*1, 3) = mean(Case(:,5));
            ResultVoip(n/25 + 3*1 + 7*1, 3) = mean(Case(:,6));
            Conf(n/25 + 3*1 + 7*1, 3) = 1.645*std(Case(:, 5))/sqrt(10);
            ConfVoip(n/25 + 3*1 + 7*1, 3) = 1.645*std(Case(:, 6))/sqrt(10);
         end
         
         %TT
         
         if f== 10
            Result(n/25 + 3*0 + 7*1, 4) = mean(Case(:,7));
            Conf(n/25 + 3*0 + 7*1 , 4) = 1.645*std(Case(:, 7))/sqrt(10);
         else
            Result(n/25 + 3*1 + 7*1, 4) = mean(Case(:,7));
            Conf(n/25 + 3*1 + 7*1, 4) = 1.645*std(Case(:, 7))/sqrt(10);
         end
         
        Result
        Conf
        ResultVoip
        ConfVoip
     end
end
 
%%
   % Simulador 4
 
 %%
 % Recolher resultados

 
Result = zeros(100,4);
Conf = zeros(100,4);

ResultVoip = zeros(100,4);
ConfVoip = zeros(100,4);

Case = zeros(10,7);

lambda = 2; 

for r = 0.75
        for n = 15

             for k = 1:10
                [PL, PLvoip, APD, APDvoip, MPD ,MPDvoip ,TT] = sim4(lambda*100,2,10000,100000,n,r);
                Case(k,1) = PL;
                Case(k,2) = PLvoip;
                Case(k,3) = APD;
                Case(k,4) = APDvoip;
                Case(k,5) = MPD;
                Case(k,6) = MPDvoip;
                Case(k,7) = TT;
             end

             %PL
                Result(n/5 + 3*1 + 7*0 +12*(r*4-1), 1) = mean(Case(:,1));
                ResultVoip(n/5 + 3*1 + 7*0 +12*(r*4-1), 1) = mean(Case(:,2));
                Conf(n/5 + 3*1 + 7*0 +12*(r*4-1), 1) = 1.645*std(Case(:, 1))/sqrt(10);
                ConfVoip(n/5 + 3*1 + 7*0 +12*(r*4-1), 1) = 1.645*std(Case(:, 2))/sqrt(10);

            %ADD
                Result(n/5 + 3*1 + 7*0 +12*(r*4-1), 2) = mean(Case(:,3));
                ResultVoip(n/5 + 3*1 + 7*0 +12*(r*4-1), 2) = mean(Case(:,4));
                Conf(n/5 + 3*1 + 7*0 +12*(r*4-1), 2) = 1.645*std(Case(:, 3))/sqrt(10);
                ConfVoip(n/5 + 3*1 + 7*0 +12*(r*4-1), 2) = 1.645*std(Case(:, 4))/sqrt(10);

             %MDA
                Result(n/5 + 3*1 + 7*0 +12*(r*4-1), 3) = mean(Case(:,5));
                ResultVoip(n/5 + 3*1 + 7*0 +12*(r*4-1), 3) = mean(Case(:,6));
                Conf(n/5 + 3*1 + 7*0 +12*(r*4-1), 3) = 1.645*std(Case(:, 5))/sqrt(10);
                ConfVoip(n/5 + 3*1 + 7*0 +12*(r*4-1), 3) = 1.645*std(Case(:, 6))/sqrt(10);
                
             %TT
                Result(n/5 + 3*1 + 7*0 +12*(r*4-1), 4) = mean(Case(:,7));
                Conf(n/5 + 3*1 + 7*0 +12*(r*4-1), 4) = 1.645*std(Case(:, 7))/sqrt(10);

            Result
            Conf
            ResultVoip
            ConfVoip
         end
end

    lambda = 10 ;
    
for r = [0.25 0.5 0.75]
        for n = [25 50 75]

             for k = 1:10
                [PL, PLvoip, APD, APDvoip, MPD ,MPDvoip ,TT] = sim4(lambda*100,10,10000,100000,n,r);
                Case(k,1) = PL;
                Case(k,2) = PLvoip;
                Case(k,3) = APD;
                Case(k,4) = APDvoip;
                Case(k,5) = MPD;
                Case(k,6) = MPDvoip;
                Case(k,7) = TT;
             end

             %PL
                Result(n/25 + 3*1 + 7*1+12*(r*4-1), 1) = mean(Case(:,1));
                ResultVoip(n/25 + 3*1 + 7*1+12*(r*4-1), 1) = mean(Case(:,2));
                Conf(n/25 + 3*1 + 7*1+12*(r*4-1), 1) = 1.645*std(Case(:, 1))/sqrt(10);
                ConfVoip(n/25 + 3*1 + 7*1+12*(r*4-1), 1) = 1.645*std(Case(:, 2))/sqrt(10);

            %ADD
                Result(n/25 + 3*1 + 7*1+12*(r*4-1), 2) = mean(Case(:,3));
                ResultVoip(n/25 + 3*1 + 7*1+12*(r*4-1), 2) = mean(Case(:,4));
                Conf(n/25 + 3*1 + 7*1+12*(r*4-1), 2) = 1.645*std(Case(:, 3))/sqrt(10);
                ConfVoip(n/25 + 3*1 + 7*1+12*(r*4-1), 2) = 1.645*std(Case(:, 4))/sqrt(10);

             %MDA
                Result(n/25 + 3*1 + 7*1+12*(r*4-1), 3) = mean(Case(:,5));
                ResultVoip(n/25 + 3*1 + 7*1+12*(r*4-1), 3) = mean(Case(:,6));
                Conf(n/25 + 3*1 + 7*1+12*(r*4-1), 3) = 1.645*std(Case(:, 5))/sqrt(10);
                ConfVoip(n/25 + 3*1 + 7*1+12*(r*4-1), 3) = 1.645*std(Case(:, 6))/sqrt(10);

             %TT

                Result(n/25 + 3*1 + 7*1+12*(r*4-1), 4) = mean(Case(:,7));
                Conf(n/25 + 3*1 + 7*1+12*(r*4-1), 4) = 1.645*std(Case(:, 7))/sqrt(10);

            Result
            Conf
            ResultVoip
            ConfVoip
         end
end
 %%
 