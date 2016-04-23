module Problem34 where

import Problem33(coprime)

totient :: Int -> Int
totient x = length $ filter (coprime x) [1..x]
