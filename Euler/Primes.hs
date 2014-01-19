module Euler.Primes (
 primesST,
 prime,
 isPrime,
 pfactor
)

where

primesST = 2 : primes'
  where
      primes' = sieve 3 9 primes' 0
      sieve x q ~(_:t) k = let fs = take k primes' in
          filter ((`all` fs) . ((/=0).) . rem) [x,x+2..q-2] ++ sieve (q+2) (head t^2) t (k+1)

prime n = (take (n+1) primesST) !! n

isPrime x = x `elem` (takeWhile (<=x) primesST)

pfactor n = factor primesST n
    where 
        factor ps@(p:pt) n 
            | p*p > n      = [n]               
            | rem n p == 0 = p : factor ps (quot n p) 
            | otherwise    =     factor pt n
