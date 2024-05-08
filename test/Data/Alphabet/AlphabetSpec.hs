module Data.Alphabet.AlphabetSpec where

import Data.Alphabet.Alphabet (Alphabet, lower, upper)
import Test.Hspec

spec :: Spec
spec = do
  describe "Alphabet" $ do
    it "has 26 characters" $ do
      length lower `shouldBe` 26
      length upper `shouldBe` 26
    it "has the correct characters" $ do
      lower `shouldBe` "abcdefghijklmnopqrstuvwxyz"
      upper `shouldBe` "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
