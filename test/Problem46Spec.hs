module Problem46Spec where

import Test.Hspec

import Problem46

spec :: Spec
spec = context "Predicades" $ do
    describe "a and' b returns" $ do
        it "True when a and b is True" $ do
            (True `and'` True) `shouldBe` True
        it "False when a is True and b is False" $ do
            (True `and'` False) `shouldBe` False
        it "False when a is False and b is True" $ do
            (False `and'` True) `shouldBe` False
        it "False when a and b is False" $ do
            (False `and'` False) `shouldBe` False
    describe "a or' b returns" $ do
        it "True when a and b is True" $ do
            (True `or'` True) `shouldBe` True
        it "True when a is True and b is False" $ do
            (True `or'` False) `shouldBe` True
        it "True when a is False and b is True" $ do
            (False `or'` True) `shouldBe` True
        it "False when a and b is False" $ do
            (False `or'` False) `shouldBe` False
    describe "a nand' b returns" $ do
        it "False when a and b is True" $ do
            (True `nand'` True) `shouldBe` False
        it "True when a is True and b is False" $ do
            (True `nand'` False) `shouldBe` True
        it "True when a is False and b is True" $ do
            (False `nand'` True) `shouldBe` True
        it "True when a and b is False" $ do
            (False `nand'` False) `shouldBe` True
    describe "a nor' b returns" $ do
        it "False when a and b is True" $ do
            (True `nor'` True) `shouldBe` False
        it "False when a is True and b is False" $ do
            (True `nor'` False) `shouldBe` False
        it "False when a is False and b is True" $ do
            (False `nor'` True) `shouldBe` False
        it "True when a and b is False" $ do
            (False `nor'` False) `shouldBe` True
    describe "a xor' b returns" $ do
        it "False when a and b is True" $ do
            (True `xor'` True) `shouldBe` False
        it "True when a is True and b is False" $ do
            (True `xor'` False) `shouldBe` True
        it "True when a is False and b is True" $ do
            (False `xor'` True) `shouldBe` True
        it "False when a and b is False" $ do
            (False `xor'` False) `shouldBe` False
    describe "a impl' b returns" $ do
        it "True when a and b is True" $ do
            (True `impl'` True) `shouldBe` True
        it "False when a is True and b is False" $ do
            (True `impl'` False) `shouldBe` False
        it "True when a is False and b is True" $ do
            (False `impl'` True) `shouldBe` True
        it "True when a and b is False" $ do
            (False `impl'` False) `shouldBe` True
    describe "a equ' b returns" $ do
        it "True when a and b is True" $ do
            (True `equ'` True) `shouldBe` True
        it "False when a is True and b is False" $ do
            (True `equ'` False) `shouldBe` False
        it "False when a is False and b is True" $ do
            (False `equ'` True) `shouldBe` False
        it "True when a and b is False" $ do
            (False `equ'` False) `shouldBe` True