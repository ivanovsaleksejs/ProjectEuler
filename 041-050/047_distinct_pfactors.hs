import Data.List (group, sort, nub)
import Euler.Primes (pfactor)

find (a:b:c:d:xs)
    | length (nub fs) == 16 = a
    | otherwise             = find (b:c:d:xs)
    where
        fs = as ++ bs ++ cs ++ ds
        [as, bs, cs, ds] = map (map product . group . pfactor) [a,b,c,d]

main = print $ find [1..]
