simplify [x,y] = [x `div` 10, y `mod` 10]

check [x,y] = x `mod` 10 == y `div` 10

find = [(x,y) | x <- [10..99], 
                y <- [10..99], 
                let [n,d] = simplify [x,y], -- Truncate 2nd digit from nominator and 1st from denominator 
                d /= 0 && n /= 0,           -- check if nominator and denominator are not 0
                n*y == d*x,                 -- check if n/d == x/y 
                n*11 /= x,                  -- check if not trivial
                check [x,y]                 -- check if truncated digits are equal
       ]

parse (x:xs) = foldl (\(n1,d1) (n2,d2)-> (n1 * n2, d1 * d2) ) x xs

main = print $ (\(n,d) -> div d n) $ parse find 
