module MultiplicationTable(multiplicationTable) where

multiplicationTable :: [Int] -> [[Int]]
multiplicationTable xs = map (\x -> [ x * y | y <- xs ]) xs
