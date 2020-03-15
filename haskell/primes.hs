module Primes where
  primes :: [Integer]
  primes = nextPrimes 2 []

  nextPrimes next prev = next:(nextPrimes (nextPrime (next:prev)) (next:prev))

  nextPrime :: [Integer] -> Integer
  nextPrime prev = findPrime (last prev + 1) prev

  findPrime :: Integer -> [Integer] -> Integer
  findPrime test prev =
    if isPrime test prev
      then test
      else findPrime (test + 1) prev

  isPrime :: Integer -> [Integer] -> Bool
  isPrime test = not . any (\x -> mod test x == 0)
