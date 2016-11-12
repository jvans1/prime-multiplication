module Main where
import Prime
import Control.Monad(forM_)
import MultiplicationTable

main :: IO ()
main = do
   let firstTen =  take 10 primes
   putStrLn $ " " ++ format firstTen
   forM_ (zip firstTen (multiplicationTable firstTen)) $ \(colHeader, row) -> do
      putStrLn $ show colHeader ++ format row


format :: [Int] -> String
format xs = concat $ map (\result -> " " ++ show result) xs
