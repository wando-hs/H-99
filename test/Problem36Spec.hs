module Problem36Spec where

import Test.Hspec

import Problem36 (prime_factors_mult)

spec :: Spec
spec = context "prime factor multiples" $ do
    describe "prime_factors_mult" $ do
        it "Construct a list containing the prime factors and multiplicity of 315" $ do
            prime_factors_mult 315
                `shouldBe` [(3,2),(5,1),(7,1)]