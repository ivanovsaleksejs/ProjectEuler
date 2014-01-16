import Euler.Fib (fib)

next n 
    | len f >= 1000 = n+2
    | otherwise     = next (n+1)
    where 
        f = fib n
        len = length . show

main = print $ next 1
