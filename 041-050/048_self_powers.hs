sumP = flip mod 10000000000 . foldl (\x y -> x+y^y) 0

main = print $ sumP [1..1000]
