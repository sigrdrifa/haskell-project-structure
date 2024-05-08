module CaesarSpec where

import Caesar
import Test.Hspec

spec :: Spec
spec = do
  describe "the caesar function" $ do
    context "when given a positive shift" $ do
      it "shifts the alphabet to the right" $ do
        caesar 3 "abc" `shouldBe` "def"

    context "when given a negative shift" $ do
      it "shifts the alphabet to the left" $ do
        caesar (-3) "def" `shouldBe` "abc"

    context "when given a shift of 0" $ do
      it "does not change the string" $ do
        caesar 0 "abc" `shouldBe` "abc"

    context "when given a shift of 26" $ do
      it "does not change the string" $ do
        caesar 26 "abc" `shouldBe` "abc"

    context "when given a shift of 27" $ do
      it "shifts the alphabet to the right by 1" $ do
        caesar 27 "abc" `shouldBe` "bcd"

    context "when given a shift of -3" $ do
      it "shifts the alphabet to the left by 3" $ do
        caesar (-3) "abc" `shouldBe` "xyz"

    context "when given a shift of -27" $ do
      it "shifts the alphabet to the left by 1" $ do
        caesar (-27) "abc" `shouldBe` "zab"

    context "when given a string with uppercase letters" $ do
      it "shifts the uppercase letters" $ do
        caesar 3 "ABC" `shouldBe` "DEF"

    context "when given a string with lowercase and uppercase letters" $ do
      it "shifts the letters" $ do
        caesar 3 "AbC" `shouldBe` "DeF"

    context "when given a string with non-alphabetic characters" $ do
      it "does not change the non-alphabetic characters" $ do
        caesar 3 "Hello, Haskell!" `shouldBe` "Khoor, Kdvnhoo!"
