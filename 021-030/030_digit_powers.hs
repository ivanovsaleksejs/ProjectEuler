import Data.Char (digitToInt)

lim x p
    | top > pow = pow
    | otherwise = lim (x+1) p
    where
        top = 10^(x-1)
        pow = x*9^p

powerSum p = sum . map ((^p) . digitToInt) . show

check p x = x == powerSum p x

totalSum p = sum $ filter (check p) [10..lim 1 p]

main = print $ totalSum 5
