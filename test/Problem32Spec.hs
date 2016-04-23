module Problem32Spec where

import Test.Hspec
import qualified Problem32

spec :: Spec
spec = describe "Check abou GCD" $ do
        it "Verify that the GCD of 36 and 63 is 9" $
            Problem32.myGCD 36 63 `shouldBe` 9
        it "Verify that the GCD of 13 and 41 is 1" $
            Problem32.myGCD 13 41 `shouldBe` 1
