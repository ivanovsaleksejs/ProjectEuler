module Euler.Func (
 sumR,
 sumDigits,
 twice,
 divisors
)

where

import Data.Char

sumR x = (1 + x) * x `div` 2 

sumDigits :: Integer -> Int
sumDigits = sum . map digitToInt . show

twice f = f . f

divisors x = 1 : filter ((== 0) . mod x) [2 .. x `div` 2]
