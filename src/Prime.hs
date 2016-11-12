module Prime(primes) where

primes :: [Int]
primes = filterPrimes [2..]

filterPrimes :: [Int] -> [Int]
filterPrimes []         =  []
filterPrimes (x:xs)     = x:(filterPrimes $ filter (\y -> mod y x /= 0) xs)

