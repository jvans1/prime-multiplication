module Main where
import Prime
import Control.Monad(forM_)
import MultiplicationTable

main :: IO ()
main = do
   let firstTenPrimes = take 10 primes
   let table = multiplicationTable firstTenPrimes
   putStrLn $ "  " ++ formatRow 4 firstTenPrimes
   forM_  (zip firstTenPrimes table) $ \(colHeader, row) -> do
      putStrLn $ formatRow 2 [colHeader] ++ formatRow 4 row

{-
  The multiplicationTable function will dominate the complexity of this program.
  The function is O(n^2) because of the nested loop, each integer in the array is multiplied
  by every other integer in the array. This generally scales very poorly. It is possible to
  optimize this by a constant factor of 2 by noticing that multiplication tables are symmetric,
  and half of the computations can be reused instead of recomputed. However this doesn't change
  the complexity of O(n^2). I omitted this optimization in favor of concise code.
-}
