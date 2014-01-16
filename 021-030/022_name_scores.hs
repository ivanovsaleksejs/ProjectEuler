{-# LANGUAGE OverloadedStrings #-}

import Data.List (sort)
import Data.Char (ord)
import qualified Data.Text as T (splitOn, pack, unpack)

sumName = sum . map ((subtract 64) . ord)

total xs = sum $ map score [1..length xs]
    where 
        score x = (*) x . sumName $ xs !! (x-1)

main = do
    names <- readFile "names.txt"
    print . total . map T.unpack . sort . T.splitOn "\",\"" . T.pack . init $ tail names
