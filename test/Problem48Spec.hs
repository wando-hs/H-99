module Problem48Spec where

import Test.Hspec

import Problem48

spec :: Spec
spec = context "Truth Table" $ do
    describe "obtain the lines of truth table (as array)" $ do
        it "given two variables" $ do
            arrangeTruthTable 2
                `shouldBe` [[True,True],[True,False],[False,True],[False,False]]
        it "given three variables" $ do
            arrangeTruthTable 3
                `shouldBe` 
                    [[True,True,True],[True,True,False],[True,False,True],
                     [True,False,False],[False,True,True],[False,True,False],
                     [False,False,True],[False,False,False]]