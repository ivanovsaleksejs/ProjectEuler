import qualified Euler.Func as F (sum)

nums n = [x|x <- ns, x `mod` 3 == 0 || x `mod` 5 ==0]
    where ns = [1..n]

-- slightly optimized version of previous
nums' n = [3,6..n] ++ [x|x <- [5,10..n], x `mod`3 /= 0]

-- much more efficient version
nums'' n = map (\x -> x * F.sum (n `div` x)) [3,5,-15]

main = print $ sum $ nums'' 999
