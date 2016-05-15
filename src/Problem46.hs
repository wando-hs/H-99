module Problem46 where

not' :: Bool -> Bool
not' True = False
not' False = True

and' :: Bool -> Bool -> Bool
and' True True = True 
and' _ _ = False

or' :: Bool -> Bool -> Bool
or' True _ = True 
or' _ True = True 
or' _ _ = False

nand' :: Bool -> Bool -> Bool
nand' a b = not' $ and' a b

nor' :: Bool -> Bool -> Bool
nor' a b = not' $ or' a b

xor' :: Bool -> Bool -> Bool
xor' True False = True
xor' False True = True
xor' _ _ = False

impl' :: Bool -> Bool -> Bool
impl' True False = False
impl' _ _ = True

equ' :: Bool -> Bool -> Bool
equ' True True = True
equ' False False = True
equ' _ _ = False


infixl 1 `or'`
infixl 2 `and'`
infixl 5 `xor'`
infixl 6 `impl'`
infixl 7 `equ'`
infixl 9 `not'`

table :: (Bool -> Bool -> Bool) -> IO ()
table pred = do
    putStrLn $ "True True = " ++ (show $ pred True True)
    putStrLn $ "True False = " ++ (show $ pred True False)
    putStrLn $ "False True = " ++ (show $ pred False True)
    putStrLn $ "False False = " ++ (show $ pred False False)
    