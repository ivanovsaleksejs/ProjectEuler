import Data.List (group)
import Euler.Primes (pfactor)

divisors = product . map ((+1) . length) . group . pfactor

triangulars = scanl (+) 0 [1..]

main = print $ head [n | n <- triangulars, divisors n > 500]
