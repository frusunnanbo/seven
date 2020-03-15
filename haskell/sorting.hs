module Sorting where
  insert :: [Integer] -> Integer -> [Integer]
  insert [] element = [element]
  insert (head:tail) element = if element < head then element:head:tail else (head:(insert tail element))

  sort :: [Integer] -> [Integer]
  sort = foldl insert []

  insertComparing :: (Integer -> Integer -> Bool) -> [Integer] -> Integer -> [Integer]
  insertComparing comparator [] element = [element]
  insertComparing comparator (head:tail) element =
    if (comparator element head)
      then element:head:tail
      else (head:(insertComparing comparator tail element))

  sortWithComparator :: (Integer -> Integer -> Bool) -> [Integer] -> [Integer]
  sortWithComparator comparator = foldl (\acc el -> insertComparing comparator acc el) []
