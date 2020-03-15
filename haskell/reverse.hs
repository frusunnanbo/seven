module ReverseList where
  reverseList :: [Integer] -> [Integer]
  reverseList [] = []
  reverseList (head:tail) = reverseList tail ++ [head]
