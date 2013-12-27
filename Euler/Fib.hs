module Euler.Fib (
 fibs,
 fib
)

where

fibs = 1 : 2 : xs
    where xs = zipWith (+) fibs (tail fibs)

fib n = fibs !! n
