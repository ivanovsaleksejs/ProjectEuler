day date
    | isLeap    = dow - 1
    | otherwise = dow 
    where
        dow           = (y + d + leap + k !! m) `mod` 7 
        k             = [0,3,3,6,1,4,6,2,5,0,3,5]
        leap          = fst dm1 - fst dm2 + fst dm3
        isLeap        = m < 2 && snd dm1 == 0 && (snd dm2 /= 0 || snd dm3 == 0)
        [dm1,dm2,dm3] = map (divMod y) [4,100,400]
        [y,m,d]       = [date !! 0 - 1900, date !! 1 - 1, date !! 2]

main = print $ length [d|y <- [1901..2000], m <- [1..12], let d = day [y,m,1], d == 0] 
