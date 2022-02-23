##Exercicio 2

##    A   B   C
## A[1/3| 1/4 |0.0]
## B[1/3|11/20|1/2]
## C[1/3| 1/5 |1/2]

## a)

M = [1/3 1/4 0;1/3 11/20 1/2; 1/3 1/5 1/2];

sum(M(:,1)) #e 1
sum(M(:,2)) #e 1
sum(M(:,3)) #e 1

# não existe 0 e os valores de todas as colunas dao 1 logo e estocástica

## b)

## 90 = A + B + C <=> 90 = 4B + B + B <=> 90 = 6B <=> B = 15
## A = 2(B+C) <=> A = 2(B+B) <=> A = 4B <=> A = 4*15 <=> A = 60
## B = C <=> C = 15

A = 60
B = 15
C = 15

X = [A B C]'

VR = X/90

## c)

R = (M^30) * X

## d)

X = [30 30 30]'

R  = (M^30) * X




