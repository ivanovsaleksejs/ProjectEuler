pent n = div (n*(3*n - 1)) 2

isPent n = snd (properFraction x) == 0
    where
        x = (1 + sqrt(1 + 24*(fromInteger n))) / 6

solve x y
    | isPent s && isPent d = d
    | x == y               = solve (x+1) 1
    | otherwise            = solve x (y+1)
    where
        s = pent x + pent y
        d = pent x - pent y

main = print $ solve 1 1
