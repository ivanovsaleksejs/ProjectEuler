import Data.Char (digitToInt)

isPan n = all (\x -> x `elem` (map digitToInt s)) [1..length s]
    where s = show n

-- We can figure out that if 9 creates pandigital product, 
-- then our result will be more or equal to 918273645,
-- so, the first number should start with 9.
-- We can exclude 9x and 9xx,
-- Because any 9x * [2..9] will produce 3-digit number
-- and concatenated product will not be 9-digit number.
-- Same with 9xx - it will produce 4-digit number.
-- So, the only chance is to multiply 9xxx by 2 and get 5-digit number.
-- Thus, we get 4+5 = 9-digit number.
-- And we can simplify concatenation like this: 
-- 9xxx * 100000 + 9xxx * 2 = 9xxx * 100002
-- So, the code will be:
main = print $ maximum [p | x <- [9123 .. 9876], let p = x*100002, isPan p]
