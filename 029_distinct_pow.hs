import Data.List (nub)

distCount a b = (length . nub) [x^y | x <- [2..a], y <- [2..b]]

main = print $ distCount 100 100
