import Data.Char

lim x 
    | top > pow = pow-362880
    | otherwise = lim (x+1)
    where
        top = 10^(x-1)
        pow = x*362880


range = flip take $ iterate (+1) 1

factSum = sum . map (product . range . digitToInt) . show

check x = x == factSum x

main = print $ sum $ filter check [10..lim 1]
