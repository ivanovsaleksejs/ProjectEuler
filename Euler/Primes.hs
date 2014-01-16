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

getNext n p
    | p `mod` k == 0 = k
    | otherwise      = getNext (n+1) p
    where k = prime n

pfactor p ps
    | p < 2     = []
    | p == k    = p : ps
    | otherwise = pfactor res (k:ps)
    where
        k = getNext 0 p
        res = p `div` k
