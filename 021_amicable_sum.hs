import Euler.Func (divisors)

isAmicable x = y /= x && sumDiv y == x
    where
        y      = sumDiv x
        sumDiv = sum . divisors

sumAmicable x = sum $ filter isAmicable [1..x]

main = print $ sumAmicable 9999
