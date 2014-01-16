import Euler.Primes (primesST, isPrime)
import Data.List (maximumBy)
import Data.Function (on)

check lim (x:xs) 
    | p < lim && isPrime p = (length (x:xs), sum (x:xs))
    | otherwise = check lim xs
    where p = sum (x:xs)

main = print $ snd . maximumBy (compare `on` fst) . map (\x -> check (10^6) x) $ map (\x -> take x ps) [1..1000] 
    where ps = take 1000 primesST 
