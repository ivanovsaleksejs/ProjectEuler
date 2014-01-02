-- more efficient version as it doesn't use Fib module.
-- Motivation: if we assume that Fibonacci sequence is 1,1,2,3,5,8...
-- then it's easy to find out that only every third number will be even.
-- Thus, we can use odd Fibonacci numbers as arguments.
sumFibs x y
    | f > 4000000 = 0
    | otherwise   = f + fs
    where 
        f  = x + y
        fs = sumFibs (f+y) (f*2+y)

main = print $ sumFibs 1 1
