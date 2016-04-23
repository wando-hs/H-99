module Problem33 where

import Problem32(myGCD)

coprime :: Int -> Int -> Bool
coprime x y = myGCD x y == 1
