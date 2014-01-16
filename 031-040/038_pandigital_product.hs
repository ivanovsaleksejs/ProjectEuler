-- This solution is more general

import Data.Char (digitToInt)
import Data.List (maximum)

isPan n = all (\x -> x `elem` (map digitToInt s)) [1..length s]
    where s = show n

digCount = length . show

prodList x y n = x * 10^(digCount yn) + yn
    where yn = y * n

panProd n = last . takeWhile (<10^9) $ scanl (\x y -> prodList x y n) n [2..]

main = print $ maximum .filter isPan $ map panProd [1..9876]
