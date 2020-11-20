main :: IO ()
main = do
    print "Task 2 \n"
    arrLenght

    print "Task 3 \n"
    doubleArrElements

    print "Task 4 \n"
    removeNthElement


arrLenght = do
    let arr = [1, 2, 3, 4, 5]
    print $arrLenghtInner arr 0
arrLenghtInner arr currentSum = 
    if null arr
        then currentSum  
    else do
        arrLenghtInner (tail arr) currentSum + 1

doubleArrElements = do
    let arr = ["a", "b", "c"]
    print $doubleArrElementsInner arr 3 
doubleArrElementsInner arr n = do
    if null arr
        then []
    else 
        duplicateArr (head arr) n ++ doubleArrElementsInner(tail arr) n
duplicateArr :: [Char] -> Int -> [Char]
duplicateArr element n = 
    if n < 0
    then []
    else
        element ++ duplicateArr element (n - 1)

removeNthElement = do
    let arr = [1,2,3,4,5,6,7,8,9]
    let n = 3
    print $removeEveryNthElementTwo arr n 1
removeEveryNthElementTwo :: [Int] -> Int -> Int -> [Int]
removeEveryNthElementTwo arr n index = do  
    if null arr
        then []
    else if mod index n == 0
        then removeEveryNthElementTwo (tail arr) n (index + 1)
    else
        [head arr] ++ removeEveryNthElementTwo (tail arr) n (index + 1)
