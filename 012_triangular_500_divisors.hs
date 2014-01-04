import qualified Euler.Func as F (sum)
import Data.List
import Euler.Primes

primeFactor n = pfactor n []

divisors = product . map ((+1) . length) . group . primeFactor

main = print $ head $ filter ((>500) . divisors) $ map F.sum [1..]
