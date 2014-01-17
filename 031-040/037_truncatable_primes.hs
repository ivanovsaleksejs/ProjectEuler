import Euler.Primes (primesST, isPrime)

pow = fst . properFraction . logBase 10

chunk x = x - x `div` p * p
    where 
        l = pow (fromIntegral x)
        p = 10^l

chunkL = takeWhile (>0) . iterate (flip div 10)

chunkR = takeWhile (>0) . iterate chunk

chunks x = snd . splitAt 1 $ chunkL x ++ chunkR x

main = print $ sum . take 11 $ filter (\x -> x > 10 && all isPrime (chunks x)) primesST
