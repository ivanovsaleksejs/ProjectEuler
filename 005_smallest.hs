import Data.List (nubBy, group, sort, sortBy)
import Data.Function (on)
import Euler.Primes (pfactor)

primeFactor p = pfactor p []

freq xs = map (\x -> (head x, length x)) (group (sort xs))

factorList (x:[]) = freq $ primeFactor x
factorList (x:xs) = freq (primeFactor x) ++ factorList xs

lcm' [] = 1
lcm' (x:xs) = (fst x)^(snd x) * lcm' xs

maxUniqueFactor xs = nubBy ((==) `on` fst) $ (reverse . sort) $ factorList xs

main = print $ lcm' $ maxUniqueFactor [1..20]
