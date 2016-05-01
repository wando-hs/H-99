module Problem35 where

primeFactors':: Word -> Word -> [Word] -> [Word]
primeFactors' number current results
    | number == 1 = results
    | number `mod` current == 0 = primeFactors' (number `quot` current) current (results ++ [current])
    | otherwise = primeFactors' number (current + 1) results

primeFactors :: Word -> [Word]
primeFactors x = primeFactors' x 2 []