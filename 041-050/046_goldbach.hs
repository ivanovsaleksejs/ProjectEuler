import Euler.Primes (primesST, isPrime)

is2sq x = 0 == snd s 
    where s = properFraction $ sqrt (fromIntegral (x `div` 2))

valid x = any is2sq . map (\n -> x-n) $ takeWhile (<x) primesST

main = print $ (+2) . last $ takeWhile (\x -> isPrime x || valid x) [9,11..]
