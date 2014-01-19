import Euler.Func (sumR)
import Data.List (group)
import Euler.Primes (pfactor)

divisors = product . map ((+1) . length) . group . pfactor

main = print $ head $ filter ((>500) . divisors) $ map sumR [1..]
