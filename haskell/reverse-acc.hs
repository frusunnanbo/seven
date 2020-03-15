module ReverseAcc where
  reverseList :: [Integer] -> [Integer]
  reverseList = fst . reverseAcc []

  reverseAcc :: [Integer] -> [Integer] -> ([Integer],[Integer])
  reverseAcc list [] = (list, [])
  reverseAcc acc (head:tail) = reverseAcc (head:acc) tail
