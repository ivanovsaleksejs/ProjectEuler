import Data.List (nub, permutations)

toInt = foldl (\x y -> x*10 + y) 0

check x [lim1,lim2]
    | y == z    = y
    | otherwise = 0
    where
        y = a * b
        p = splitAt lim1 x
        q = splitAt lim2 $ snd p
        a = toInt $ fst p
        b = toInt $ fst q
        z = toInt $ snd q

main = print $ sum . nub . map (\x -> sum $ map (check x) [[1,4],[2,3],[3,3]]) $ permutations [1..9]
