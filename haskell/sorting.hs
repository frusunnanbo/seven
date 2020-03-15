module Sorting where
  insert :: Integer -> [Integer] -> [Integer]
  insert element [] = [element]
  insert element (head:tail) = if element < head then element:head:tail else (head:(insert element tail))

  sort :: [Integer] -> [Integer]
  sort = sortAcc []

  sortAcc :: [Integer] -> [Integer] -> [Integer]
  sortAcc acc [] = acc
  sortAcc acc (head:tail) = sortAcc (insert head acc) tail
