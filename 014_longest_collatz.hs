import Data.List (foldl')

next x
    | even x    = x `div` 2
    | otherwise = 3 * x + 1

collatz = takeWhile (>1) . iterate next 

sequences lim = map collatz [1..lim]

comp x y
    | length x > length y = x
    | otherwise           = y

find = head . foldl' comp [] . sequences

main = print $ find 1000000
