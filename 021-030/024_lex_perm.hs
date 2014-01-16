import Data.List (sort, permutations)

main = print $ foldl (\x y -> x*10+y) 0 $ flip (!!) (10^6-1) $ sort $ permutations [0..9]
