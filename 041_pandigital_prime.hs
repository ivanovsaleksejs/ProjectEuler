import Data.List (maximum, permutations)

pandigitals x
    | x < 2     = []
    | otherwise = permutations [1..x] ++ pandigitals (x-1)

isPrime x = null . filter (\y ->  x `mod`y == 0) . takeWhile (\y ->  y*y <= x) $ 2:[3,5..]

main = print $ maximum . filter isPrime $ map (foldl (\x y -> x*10+y) 0) $ pandigitals 9
