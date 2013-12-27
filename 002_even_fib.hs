import Euler.Fib

sumFibs n
    | f > 4000000 = 0
    | even f      = f + fs
    | otherwise   = 0 + fs
    where
        f  = fib n
        fs = sumFibs (n+1)

main = print $ sumFibs 1
