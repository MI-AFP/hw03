import Test.Hspec

import Lib

-- `main` is here so that this module can be run from GHCi on its own.  It is
-- not needed for automatic spec discovery.
main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "czechSalutation" $ do
    undefined

  describe "allensComparison" $ do
    it "returns Equals for equal internals" $ do
      allensComparison (1, 2) (1, 2) `shouldBe` Equals (1, 2) (1, 2)
      allensComparison (-2, 2) (-2, 2) `shouldBe` Equals (-2, 2) (-2, 2)
      allensComparison ('a', 'z') ('a', 'z') `shouldBe` Equals ('a', 'z') ('a', 'z')
    it "returns Before when end of one is before start of other" $ do
      allensComparison (1, 2) (4, 5) `shouldBe` Before (1, 2) (4, 5)
      allensComparison (-2, 0) (1, 2) `shouldBe` Equals (-2, 0) (1, 2)
      allensComparison ('a', 'c') ('x', 'z') `shouldBe` Equals ('a', 'c') ('x', 'z')
    it "returns Before when end of one is before start of other (inversed)" $ do
      allensComparison (4, 5) (1, 2) `shouldBe` Before (1, 2) (4, 5)
      allensComparison (1, 2) (-2, 0) `shouldBe` Before (-2, 0) (1, 2)
      allensComparison ('x', 'z') ('a', 'c') `shouldBe` Before ('a', 'c') ('x', 'z')
    it "returns Meets when end of one is equal to start of other" $ do
      allensComparison (1, 2) (2, 5) `shouldBe` Meets (1, 2) (2, 5)
      allensComparison (-2, 0) (0, 2) `shouldBe` Meets (-2, 0) (0, 2)
      allensComparison ('a', 'c') ('c', 'z') `shouldBe` Meets ('a', 'c') ('c', 'z')
    it "returns Meets when end of one is equal to start of other (inversed)" $ do
      allensComparison (2, 5) (1, 2) `shouldBe` Meets (1, 2) (2, 5)
      allensComparison (0, 2) (-2, 0) `shouldBe` Meets (-2, 0) (0, 2)
      allensComparison ('c', 'z') ('a', 'c') `shouldBe` Meets ('a', 'c') ('c', 'z')
    it "returns Overlaps when there is common part but first starts sooner and second end later" $ do
      allensComparison (1, 4) (2, 5) `shouldBe` Meets (1, 4) (2, 5)
      allensComparison (-2, 1) (-1, 2) `shouldBe` Meets (-2, 1) (-1, 2)
      allensComparison ('a', 'm') ('i', 'z') `shouldBe` Meets ('a', 'm') ('i', 'z')
    it "returns Overlaps when there is common part but first starts sooner and second end later (inversed)" $ do
      allensComparison (2, 5) (1, 4) `shouldBe` Meets (1, 4) (2, 5)
      allensComparison (-1, 2) (-2, 1) `shouldBe` Meets (-2, 1) (-1, 2)
      allensComparison ('i', 'z') ('a', 'm') `shouldBe` Meets ('a', 'm') ('i', 'z')
    it "returns Starts if one starts with the other but ends sooner" $ do
      allensComparison (1, 5) (1, 10) `shouldBe` Starts (1, 5) (1, 10)
      allensComparison (-1, 2) (-1, 7) `shouldBe` Meets (-1, 2) (-1, 7)
      allensComparison ('b', 'e') ('b', 'm') `shouldBe` Meets ('b', 'e') ('b', 'm')
    it "returns Starts if one starts with the other but ends sooner (inversed)" $ do
      allensComparison (1, 10) (1, 5) `shouldBe` Starts (1, 5) (1, 10)
      allensComparison (-1, 7) (-1, 2) `shouldBe` Meets (-1, 2) (-1, 7)
      allensComparison ('b', 'm') ('b', 'e') `shouldBe` Meets ('b', 'e') ('b', 'm')
    it "returns Finishes if one ends with the other but starts sooner" $ do
      allensComparison (5, 10) (1, 10) `shouldBe` Starts (5, 10) (1, 10)
      allensComparison (2, 7) (-1, 7) `shouldBe` Meets (2, 7) (-1, 7)
      allensComparison ('e', 'm') ('b', 'm') `shouldBe` Meets ('e', 'm') ('b', 'm')
    it "returns Finishes if one ends with the other but starts sooner (inversed)" $ do
      allensComparison (1, 10) (5, 10) `shouldBe` Starts (5, 10) (1, 10)
      allensComparison (-1, 7) (2, 7) `shouldBe` Meets (2, 7) (-1, 7)
      allensComparison ('b', 'm') ('e', 'm') `shouldBe` Meets ('e', 'm') ('b', 'm')
    it "returns During if one starts after the other and also ends before the other" $ do
      allensComparison (5, 10) (1, 20) `shouldBe` Starts (5, 10) (1, 20)
      allensComparison (2, 7) (-1, 10) `shouldBe` Meets (2, 7) (-1, 10)
      allensComparison ('e', 'm') ('a', 'z') `shouldBe` Meets ('e', 'm') ('a', 'z')
    it "returns During if one starts after the other and also ends before the other (inversed)" $ do
      allensComparison (1, 20) (5, 10) `shouldBe` Starts (5, 10) (1, 20)
      allensComparison (-1, 10) (2, 7) `shouldBe` Meets (2, 7) (-1, 10)
      allensComparison ('a', 'z') ('e', 'm') `shouldBe` Meets ('e', 'm') ('a', 'z')

  describe "shapeCircumference" $ do
    undefined

  describe "shapeArea" $ do
    undefined

  describe "geometricSeries" $ do
    undefined

  describe "primes" $ do
    undefined

  describe "phi" $ do
    undefined

  describe "imports" $ do
    it "has correct example 1"
      take 100 dummyListExample1 `shouldBe` replicate 100 25
    it "has correct example 2"
      stringExample2 `shouldBe` "Example 2"
    it "has correct example 3"
      stringExample2 `shouldBe` "Example 3"
