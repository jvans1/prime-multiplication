module MultiplicationTableSpec where
import Test.Hspec
import MultiplicationTable(multiplicationTable, formatRow)

run :: Spec
run = do
  describe "multiplicationTable" $ do
    it "the i'th and j'th index is the result of their multiplication" $ do
       let table = multiplicationTable [2,4,5,6]
       table !! 0 !! 1 `shouldBe` 8
       table !! 1 !! 2 `shouldBe` 20
       table !! 1 !! 3 `shouldBe` 24
       table !! 2 !! 2 `shouldBe` 25
       table !! 3 !! 3 `shouldBe` 36

  describe "formatRow" $ do
    it "creates each row with the specified width" $ do
      formatRow 4 [1] `shouldBe` "   1"
      formatRow 3 [3,32] `shouldBe` "  3 32"
