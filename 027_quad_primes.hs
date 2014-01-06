--             very ugly
--      many code
--                             much overhead
-- wow

import Euler.Primes (primesST)
import Data.List (sortBy)
import Data.Function (on)

fun a b n = n^2 + a*n + b

isPrime x = elem x $ takeWhile (<=x) primesST

gen a b [] = []
gen a b (x:xs) = g : gen a b xs
    where g = fun a b x

sortGT (a1, b1) (a2, b2)
    | b1 < b2 = GT
    | b1 >= b2 = LT

list = [([a,b],(length . takeWhile isPrime) (gen a b [0..])) | a <-[-999..999], b <- [-999..999]]

main = print $ product $ fst $ head $ sortBy sortGT list 
