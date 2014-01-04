import Euler.Func (sumR)
import Data.List (group)
import Euler.Primes (pfactor)

primeFactor n = pfactor n []

divisors = product . map ((+1) . length) . group . primeFactor

main = print $ head $ filter ((>500) . divisors) $ map sumR [1..]
