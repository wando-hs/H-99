module Problem35 where

primeFactors':: Int -> Int -> [Int] -> [Int]
primeFactors' number current results
    | number == 1 = results
    | number `mod` current == 0 = primeFactors' (number `quot` current) current (results ++ [current])
    | otherwise = primeFactors' number (current + 1) results

primeFactors :: Int -> [Int]
primeFactors x = primeFactors' x 2 []