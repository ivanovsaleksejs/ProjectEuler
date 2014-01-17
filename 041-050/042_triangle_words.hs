{-# LANGUAGE OverloadedStrings #-}

import Data.Char (ord)
import qualified Data.Text as T (splitOn, pack, unpack)

isTrian n = snd (properFraction x) == 0
    where
        x = (-1 + sqrt(1 + 8*(fromIntegral n))) / 2

isTrianWord = isTrian . sum . map (\x -> ord x - 64) 

main = do
    names <- readFile "words.txt"
    print . length . filter isTrianWord . map T.unpack . T.splitOn "\",\"" . T.pack . init $ tail names
