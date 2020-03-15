module Lazy where
  everyThird :: Integer -> [Integer]
  everyThird x = [x, (x + 3)..]

  everyFifth :: Integer -> [Integer]
  everyFifth y = [y, (y + 5)..]

  everyEighth :: Integer -> Integer -> [Integer]
  everyEighth x y = zipWith (+) (everyThird x) (everyFifth y)
