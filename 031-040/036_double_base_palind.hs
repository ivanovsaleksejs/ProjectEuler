decToBin x = reverse $ decToBin' x
    where
        decToBin' 0 = []
        decToBin' y = let (a,b) = quotRem y 2 in [b] ++ decToBin' a

palind x = x == reverse x

palindInt x = palind $ show x

palindBin x = palind b
    where b = decToBin x

palindDouble x = palindInt x && palindBin x

main = print $ sum $ filter palindDouble [1..999999]
