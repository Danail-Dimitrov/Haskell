main :: IO ()
main = do
    print $show (multiply 5 10)
    print $show (passAFuncToAFunc add1 5)
    print $show (passAFuncToAFunc remove1 5)

multiply a = (\b -> b* a)

passAFuncToAFunc :: (t1 -> Integer) -> t1 -> Integer
passAFuncToAFunc func num = func num

add1 n =  n + 1

remove1 n = n - 1