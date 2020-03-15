module Sorting where
  insert :: [Integer] -> Integer -> [Integer]
  insert [] element = [element]
  insert (head:tail) element = if element < head then element:head:tail else (head:(insert tail element))

  sort :: [Integer] -> [Integer]
  sort = foldl insert []
