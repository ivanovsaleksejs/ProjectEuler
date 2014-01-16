import Euler.Func (sumR)

sqSum n = n*(n+1)*(2*n+1) `div` 6

sqDiff n = (sumR n)^2 - (sqSum n)

main = print $ sqDiff 100
