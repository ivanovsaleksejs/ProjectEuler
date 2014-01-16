import Data.List (sortBy)

rem10 n x
    | r > x     = r
    | r == 0    = 0
    | otherwise = r * 10
    where r = (n - x*(n `div` x))

remList n x xs
    | r `elem` xs = xs
    | r == 0      = xs
    | otherwise   = remList r x (r:xs)
    where r = rem10 n x

sortGT (a1, b1) (a2, b2)
    | b1 < b2 = GT
    | b1 >= b2 = LT

main = print . fst . head . sortBy sortGT $ map (\x -> (x, length (remList 1 x []))) [1..1000]
