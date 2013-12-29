-- import Data.List (nubBy, group, sort, sortBy)
-- import Data.Function (on)
import Euler.Primes

-- primeFactor p = pfactor p []

-- freq xs = map (\x -> (head x, length x)) (group (sort xs))

-- factorList (x:[]) = freq $ primeFactor x
-- factorList (x:xs) = freq (primeFactor x) ++ factorList xs

-- lcm' [] = 1
-- lcm' (x:xs) = (fst x)^(snd x) * lcm' xs

-- maxUniqueFactor xs = nubBy ((==) `on` fst) $ (reverse . sort) $ factorList xs

-- main = print $ lcm' $ maxUniqueFactor [1..20]


-- much more efficient version 
maxPower n p x
    | n^p > x   = p-1
    | otherwise = maxPower n (p+1) x

lcm'' n x
    | p > x     = 1
    | otherwise = (*) mp $ lcm'' (n+1) x
    where
        p  = prime n
        mp = (^) p $ maxPower p 1 x

main = print $ lcm'' 0 20
