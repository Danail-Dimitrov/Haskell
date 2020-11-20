main :: IO()
main = do
    putStrLn("First Task")
    logN
    print $repeat 5

logN = do
    imput <- getLine
    let n = (read imput :: Integer)
    print $floor $logBase 2 (fromIntegral n)