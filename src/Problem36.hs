module Problem36 where

import Problem35

prime_factors_mult :: Word -> [(Word, Int)]
prime_factors_mult x = prime_factors_mult' (primeFactors x) []

prime_factors_mult' :: [Word] -> [(Word ,Int)] -> [(Word, Int)]
prime_factors_mult' [] factors = factors
prime_factors_mult' (x:xs) [] = prime_factors_mult' xs [(x, 1)]
prime_factors_mult' (x:xs) ((num, times):ys)
    | x == num = prime_factors_mult' xs ((num, (times + 1)):ys) 
    | otherwise = (num, times) : prime_factors_mult' xs ((x, 1):ys)