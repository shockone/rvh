module Main (main, spec) where

import Test.Hspec
import RVH.C3

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "palindrome" $ do
    it "returns a palindrome" $
      palindrome [1 :: Int ,2,3] `shouldBe` [1, 2, 3, 3, 2, 1]

    it "returns an empty list for an exmpty list" $
      palindrome ([]::[Int]) `shouldBe` []


  describe "isPalindrome" $ do
    it "can handle even number of elements" $ do
      isPalindrome [1 :: Int ,2, 2, 1] `shouldBe` True
      isPalindrome [1 :: Int ,2, 1, 1] `shouldBe` False

    it "can handle odd number of elements" $ do
      isPalindrome [1 :: Int, 2, 3, 3, 2, 1] `shouldBe` True
      isPalindrome [2 :: Int, 2, 3, 3, 2, 1] `shouldBe` False

    it "returns true for an empty list" $
      isPalindrome ([]::[Int]) `shouldBe` True
