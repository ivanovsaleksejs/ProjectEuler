-- We assume that
-- a^2 + b^2 = c^2
-- a + b + c = x
-- a < b < c
-- Then we only need to reduce these equations to
-- a = x * (x/2-b) / (x-b)
-- Note: works only for triplets with one possible solution

solvePyth n = floor $ product $ ab ++ [c]
    where 
        ab = filter (\x -> x > 0 && x == fromIntegral (round x)) [n*(n2 - b) / (n-b)|b <- [n, n-1 .. 1]]
        c  = n - (sum ab)
        n2 = n / 2

main = print $ solvePyth 1000
