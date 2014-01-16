import Data.List (group, sort, sortBy)

checkSqrt a b
    | snd c == 0 = fst c
    | otherwise  = 0
    where
        c = properFraction $ sqrt (fromIntegral ab)
        ab = a^2 + b^2

sortLength a b
    | length a < length b = GT
    | otherwise           = LT

solve x = head . head . sortBy sortLength . group $ sort [p | a <- [1..lim], b <- [1..lim], let c = checkSqrt a b, let p = a+b+c, c /= 0]
    where lim = x `div` 2

main = print $ solve 1000 
