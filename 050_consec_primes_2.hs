import Euler.Primes (primesST, isPrime)

check xs size offset
    | length ps < size = check xs (size-1) 0
    | isPrime p        = p
    | otherwise        = check xs size (offset+1)
    where 
        ps = take size . snd $ splitAt offset xs
        p  = sum ps

limit x = length . takeWhile (<x) . scanl (+) 0

main = print $ check ps (length ps) 0
    where 
        ps  = take lim primesST
        lim = limit (10^6) primesST
