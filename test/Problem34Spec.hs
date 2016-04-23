module Problem34Spec where

import Test.Hspec

import Problem34 (totient)

spec :: Spec
spec = context "" $ do
  describe "subsets" $ do
      it "determine that totien of 10 is 4" $ do
	totient 10
            `shouldBe` 4
