-- Very slow, to be fixed

import Data.List ((\\))
import Euler.Func (divisors)

isAbundant x = (sum . divisors) x > x

abunds = filter isAbundant [12..]

check x = any (`elem` abList) $ map (x-) abList
    where abList = takeWhile (<x) abunds

main = print $ sum $ filter (not . check) [1..28123]
