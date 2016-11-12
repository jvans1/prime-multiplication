import qualified PrimeSpec
import qualified MultiplicationTableSpec
import Test.Hspec
main :: IO ()
main = hspec $ do
        PrimeSpec.run
        MultiplicationTableSpec.run
