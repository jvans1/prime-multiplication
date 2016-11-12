module MultiplicationTableSpec where
import Test.Hspec
import MultiplicationTable(multiplicationTable)

run :: Spec
run = do
  it "the i'th and j'th index is the result of their multiplication" $ do
     let table =  (multiplicationTable [2,4,5, 6])
     table !! 0 !! 1 `shouldBe` 8
     table !! 1 !! 2 `shouldBe` 20
     table !! 1 !! 3 `shouldBe` 24
     table !! 2 !! 2 `shouldBe` 25
     table !! 3 !! 3 `shouldBe` 36

