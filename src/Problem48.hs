module Problem48 where

import Problem46

tablen :: Show a => Int -> ([Bool] -> a) -> IO ()
tablen n pred = mapM_ putLines $ arrangeTruthTable n
    where putLines xs = putStrLn $ (show xs) ++ " = " ++ (show $ pred xs)

arrangeTruthTable :: Int -> [[Bool]]
arrangeTruthTable 1 = [[True], [False]]
arrangeTruthTable n = truthy ++ falsey
    where truthy  = map (\xs -> True:xs) subconj
          falsey   = map (\xs -> False:xs) subconj 
          subconj = arrangeTruthTable (n - 1)