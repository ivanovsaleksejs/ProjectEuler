import Euler.Primes (primesST, isPrime)
import Data.List (nub, sort)

toDigits = reverse . map (`mod` 10) . takeWhile (>0) . iterate (`div` 10)

toInt = foldl (\x y -> x*10 + y) 0

perm = (==1) . length . nub . map sort . map toDigits

valid x = perm x && all isPrime x

find n = filter ((>0) . length) . filter valid $ map (\x -> [x, x+n, x+n*2]) primes
    where primes = filter (>999) $ takeWhile (<10000) primesST

main = print $ toInt . concat . map toDigits $ (find 3330)!!1
