module Problem39Spec where

import Test.Hspec

import Problem39 (primesR)

spec :: Spec
spec = context "primes in range" $ do
    describe "primesR" $ do
        it "given 10 and 10 obtain the list of primes in this range" $ do
            primesR 10 20
                `shouldBe` [11,13,17,19]