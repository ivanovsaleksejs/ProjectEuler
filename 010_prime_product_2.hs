import Euler.Primes

listP limit = filter (<(toInteger limit)) $ take (limit `div` 10) primesST

main = print $ sum $ listP 2000000
