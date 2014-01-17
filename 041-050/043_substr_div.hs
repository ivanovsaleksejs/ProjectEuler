import Data.List (permutations)

valid x = all (==0) $ zipWith mod x [2,3,5,7,11,13,17]

toInt = foldl (\x y -> x*10 + y) 0

chunks x = map (toInt . take 3 . snd . flip splitAt x) [1..7]

main = print $ sum . map toInt . filter (valid . chunks) $ permutations [0..9]
