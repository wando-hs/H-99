module Problem39 where

import Problem31(isPrime)

primesR :: Int -> Int -> [Int]
primesR x y = filter isPrime [x..y]