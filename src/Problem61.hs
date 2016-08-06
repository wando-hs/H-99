module Problem61 (Tree(..), countLeaves, leaves, leaf, buildTree) where

data Tree a = Empty | Node a (Tree a) (Tree a)
    deriving (Show)

countLeaves :: Tree a -> Integer
countLeaves Empty = 0
countLeaves (Node _ Empty Empty) = 1
countLeaves (Node _ left right) = countLeaves left + countLeaves right

leaves :: Tree a -> [a]
leaves Empty = []
leaves (Node a Empty Empty) = [a]
leaves (Node _ left right) = leaves left ++ leaves right

leaf :: Show a => a -> Tree a
leaf x = Node x Empty Empty

internals :: Tree a -> [a]
internals Empty = []
internals (Node _ Empty Empty) = []
internals (Node x left right) = [x] ++ internals left ++ internals right

atLevel :: Tree a -> Integer -> [a]
atLevel (Node x _ _) 1 = [x]
atLevel (Node _ left right) n = recur left ++ recur right
    where recur tree = atLevel tree $ pred n

buildTree :: Integer -> Tree Char
buildTree h = build 1
    where build x | x > h = Empty
                   | otherwise = Node 's' (build (2*x)) (build (2*x+1))
