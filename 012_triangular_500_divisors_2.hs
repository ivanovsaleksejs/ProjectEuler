import Data.List
import Euler.Primes

primeFactor n = pfactor n []

divisors = product . map ((+1) . length) . group . primeFactor

triangulars = scanl (+) 0 [1..]

main = print $ head [n | n <- triangulars, divisors n > 500]
