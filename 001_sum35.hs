nums n = [x|x <- ns, x `mod` 3 == 0 || x `mod` 5 ==0]
    where ns = [1..n]

main = print $ sum $ nums 999
