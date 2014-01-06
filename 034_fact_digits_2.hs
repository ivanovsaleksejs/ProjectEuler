facts = scanl (*) 1 [1..10]

lim x 
    | top > pow = pow-362880
    | otherwise = lim (x+1)
    where
        top = 10^(x-1)
        pow = x*362880

factSum x
    | d == 0    = x'
    | otherwise = x' + factSum d
    where
        (d,m)  = x `divMod` 10
        x' = facts !! m

check x = x == factSum x

main = print $ sum $ filter check [10..lim 1]
