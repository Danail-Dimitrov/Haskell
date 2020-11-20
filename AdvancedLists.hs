import Data.List ( sortOn )
import Data.Ord ( Down(Down) )
import qualified Data.Text as T

main :: IO ()
main = do
    let arr = ["asd", "bsd", "csd"]
    print $ sortDesc arr
    print $ T.splitOn (T.pack " ") (T.pack "this is a test")

sortDesc :: Ord a => [a] -> [a]
sortDesc = sortOn Down


