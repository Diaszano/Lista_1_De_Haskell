igualQuatro :: Int -> Int -> Int -> Int -> Bool
igualQuatro a b c d = a == b && b == c && c == d

quantosIguais :: Int -> Int -> Int -> Int 
quantosIguais a b c
 |(a==b)&&(b==c) = 3
 |(a/=b)&&(b/=c) = 0
 |otherwise = 2

todosDiferentes :: Int -> Int -> Int -> Bool
todosDiferentes a b c = 0 == quantosIguais a b c