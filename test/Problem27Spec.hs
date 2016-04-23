module Problem27Spec where

import Test.Hspec

import Problem27 (group, subsets)

spec :: Spec
spec = context "aaa aa " $ do
  describe "group" $ do
    it "should return all combinations" $ do
      shouldBe 1260 . length $ group [2, 3, 4] ("ABCDEFGHI" :: [Char])
    it "should return all combinations" $ do
      shouldBe 756 . length $ group [2, 2, 5] ("ABCDEFGHI" :: [Char])
    it "should return" $ do
      group [2, 3] "ABCDE" `shouldBe`
        [["AB" :: [Char], "CDE"], ["AC", "BDE"], ["AD", "BCE"], ["AE", "BCD"],
         ["BC", "ADE"], ["BD", "ACE"], ["BE", "ACD"],
         ["CD", "ABE"], ["CE", "ABD"],
         ["DE", "ABC"]]

  describe "subsets" $ do
      it "should return all subsets with n elements from a given set" $ do
        subsets 2 "ABCD"
            `shouldBe` ["AB" :: [Char], "AC", "AD", "BC", "BD", "CD"]
