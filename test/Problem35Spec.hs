module Problem35Spec where

import Test.Hspec

import Problem35 (primeFactors)

spec :: Spec
spec = context "" $ do
  describe "subsets" $ do
      it "determine prime factors of 18" $ do
    	primeFactors 18
            `shouldBe` [2, 3, 3]
