import qualified Euler.Func as F (sum)

sqSum n = n*(n+1)*(2*n+1) `div` 6

sqDiff n = (F.sum n)^2 - (sqSum n)

main = print $ sqDiff 100
