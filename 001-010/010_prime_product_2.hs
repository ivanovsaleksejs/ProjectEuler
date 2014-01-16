import Euler.Primes (primesST)

listP limit = takeWhile (<(toInteger limit)) primesST

main = print $ sum $ listP 2000000
