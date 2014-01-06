facts = scanl (*) 1 [1..10]

lim x 
    | top > pow = pow-362880
    | otherwise = lim (x+1)
    where
        top = 10^(x-1)
        pow = x*362880

factSum = sum . map ((!!) facts . (`mod` 10)) . takeWhile (>0) . iterate (`div` 10)

check x = x == factSum x

main = print $ sum $ filter check [10..lim 1]
