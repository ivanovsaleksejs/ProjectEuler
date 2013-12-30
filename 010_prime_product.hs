import Euler.Primes

listP n limit
    | p > limit = []
    | otherwise   = p:(listP (n+1) limit)
    where p = prime n
    
main = print $ sum $ listP 0 2000000 
