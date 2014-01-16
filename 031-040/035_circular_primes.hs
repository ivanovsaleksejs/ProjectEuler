import Data.List ((\\))
import Euler.Primes

rolS x = x' + dx
    where
        p = floor $ logBase 10 $ fromIntegral x
        x' = x `div` 10
        dx = (x `mod` 10) * 10^p    

rotate x
    | any (\r -> r `elem` (show x)) ['0','2','4','5','6','8'] = [x]
    | otherwise =  x : (takeWhile (/=x) $ iterate rolS x')
    where 
        x' = rolS x

solve [] = []
solve (x:xs)
    | x `elem` [2,3,5,7] = x : solve xs
    | any (\r -> r `elem` (show x)) ['0','2','4','5','6','8'] = solve xs'
    | all (\r -> r `elem` (x:xs)) rs = rs ++ solve xs'
    | otherwise = solve xs'
    where
        rs = rotate x
        xs' = xs \\ rs

main = print $ length . solve $ filter valid $ takeWhile (<10^6) primesST
    where valid x = x < 10 || all (\n -> n `elem` ['1','3','7','9']) (show x)
