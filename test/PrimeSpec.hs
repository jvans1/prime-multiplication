module PrimeSpec(run) where
import Test.Hspec
import Prime

run :: Spec
run = do
  it "generates a list of primes" $ do
    take 10 primes `shouldBe` [2,3,5,7,11,13,17,19,23,29]
