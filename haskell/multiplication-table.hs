module MultiplicationTable where
  table :: [(Integer, Integer, Integer)]
  table = [ (factor1, factor2, answer) | factor1 <- [1..12], factor2 <- [1..12], answer <- [1..(12*12)], answer == factor1 * factor2]
