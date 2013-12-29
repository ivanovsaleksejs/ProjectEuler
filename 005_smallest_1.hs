-- much more efficient version 
import Euler.Primes (prime)

maxPower n p x
    | n^p > x   = p-1
    | otherwise = maxPower n (p+1) x

lcm'' n x
    | p > x     = 1
    | otherwise = (*) mp $ lcm'' (n+1) x
    where
        p  = prime n
        mp = (^) p $ maxPower p 1 x

main = print $ lcm'' 0 20
