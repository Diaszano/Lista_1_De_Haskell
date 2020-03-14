--1) Escreva a função os QuatroSaoIguais que possui tipo Int -> Int -> Int -> Int -> Bool que retorna True se seus quatro argumentos são iguais 
igualQuatro :: Int -> Int -> Int -> Int -> Bool
igualQuatro a b c d = a == b && b == c && c == d

--2) Defina a função quantosSaoIguais :: Int -> Int -> Int -> Int que conta quantos argumentos iguais a função recebeu
quantosIguais :: Int -> Int -> Int -> Int 
quantosIguais a b c
 |(a==b)&&(b==c) = 3
 |(a/=b)&&(b/=c)&&(a/=c) = 0
 |otherwise = 2

--3) Defina a função todosDiferentes :: Int -> Int -> Int -> Bool que retorna True se todos os seus argumentos s˜ao diferentes. Obs: m /= n
-- retorna True se m e n são diferentes
todosDiferentes :: Int -> Int -> Int -> Bool
todosDiferentes a b c = 0 == quantosIguais a b c

--4) Defina um conjunto de testes para a função todosDiferentes


--5) O que está errado com a seguinte definição de todosDiferentes: todosDiferentes n m p = ( ( n/=m ) && ( m/=p ) )
-- O conjunto de testes que você definiu na questão anterior funciona com esta definição?
-- Resposta; está errado pois 'p' pode ser igual 'n'

--6) Defina a função todosIguais :: Int -> Int -> Int -> Bool
todosIguais :: Int -> Int -> Int -> Bool
todosIguais a b c = 3 == quantosIguais a b c

--7) Escreva uma definição de quantosSaoIguais que use a função todosDiferentes e a função todosIguais
quantosIguaisNova :: Int -> Int -> Int -> Int
quantosIguaisNova a b c
 |todosIguais a b c = 3
 |todosDiferentes a b c = 0
 |otherwise = 2

--8) Defina a função elevadoDois :: Int -> Int que recebe um argumento n e devolve como resposta n²
elevadoDois :: Int -> Int
elevadoDois n =  n * n

--9) Defina a função elevadoQuatro :: Int -> Int que recebe um argumento n e devolve como resposta n⁴. Use elevadoDois para definir elevadoQuatro
elevadoQuatro :: Int -> Int
elevadoQuatro n = elevadoDois n * elevadoDois n
