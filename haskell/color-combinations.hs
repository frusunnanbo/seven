module ColorCombinations where
  combinations :: [String] -> [(String, String)]
  combinations colors = [ (color1, color2) | color1 <- colors, color2 <- colors, color1 < color2 ]
