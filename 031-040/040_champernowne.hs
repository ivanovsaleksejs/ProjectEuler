toDigits = reverse . map (`mod` 10) . takeWhile (>0) . iterate (`div` 10)

listDigits (x:xs) = d ++ listDigits xs
    where 
        d
            | x == 0    = [0]
            | otherwise = toDigits x

digit n = listDigits [0..] !! n

main = print $ product . map digit . scanl (*) 1 $ replicate 6 10
