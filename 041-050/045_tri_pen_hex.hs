hexagonal n = n*(2*n-1)

isTrian n = snd (properFraction x) == 0
    where
        x = (-1 + sqrt(1 + 8*(fromInteger n))) / 2

isPent n = snd (properFraction x) == 0
    where
        x = (1 + sqrt(1 + 24*(fromInteger n))) / 6

solve x
    | isTrian h && isPent h = h
    | otherwise             = solve (x+1)
    where h = hexagonal x


main = print $ solve 144
