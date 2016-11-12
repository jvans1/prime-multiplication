module MultiplicationTable(multiplicationTable, formatRow) where

multiplicationTable :: [Int] -> [[Int]]
multiplicationTable xs = map (\x -> [ x * y | y <- xs ]) xs

formatRow :: Int -> [Int] -> String
formatRow cellWidth xs = concat $ map formatCell xs
  where
    formatCell :: Int -> String
    formatCell int = let result = show int
                         resultSize  = length result
                         paddingAmount = cellWidth - resultSize in
                         take paddingAmount (cycle " ") ++ result
