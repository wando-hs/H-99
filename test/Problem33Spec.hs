module Problem33Spec where

import Test.Hspec

import Problem33 (coprime)

spec :: Spec
spec = context "" $ do
  describe "subsets" $ do
      it "determine that 35 and 64 are coprimes" $ do
	coprime 35 64
            `shouldBe` True
      it "determine that 10 and 20 are not coprimes" $ do
	      coprime 10 20
            `shouldBe` False
