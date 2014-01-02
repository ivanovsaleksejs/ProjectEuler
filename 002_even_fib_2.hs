-- Using Golden Ratio
-- Function returns correct values for fibs to fib 75,
-- which is enough for this task
fib n = (r^n - (1 - r)^n)/(sqrt 5) where r = (1 + sqrt 5)/2

main = print $ round . sum . takeWhile (<4000000) $ map fib [0,3..]
