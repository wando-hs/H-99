module Problem27 where

import Data.List ((\\))

subsets :: Int -> [a] -> [[a]]
subsets 0 _ = [[]]
subsets _ [] = []
subsets size (x:xs) = map (x:) (subsets (size - 1) xs) ++ subsets size xs

group :: Eq a => [Int] -> [a] -> [[[a]]]
group [] _ = []:[]:[]
group [x] els = [subsets x els]
group (x:xs) els = concat . map appendSubsets $ subsets x els
    where appendSubsets c = map (c:) $ group xs (els \\ c)
