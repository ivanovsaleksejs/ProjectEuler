module Euler.Func (
 Euler.Func.sum,
 Euler.Func.sumDigits
)

where

import Data.Char

sum x = (1 + x) * x `div` 2 

sumDigits :: Integer -> Int
sumDigits = Prelude.sum . map digitToInt . show
