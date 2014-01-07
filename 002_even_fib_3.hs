-- Modyfied fibs one-liner to generate only even fibs

sumFibs = sum . flip takeWhile fibs
    where fibs = 0 : 2 : zipWith (\x y -> 4 * y + x) fibs (tail fibs)

main = print $ sumFibs (<4000000)
