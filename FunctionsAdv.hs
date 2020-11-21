<<<<<<< HEAD
main :: IO ()
main = do
    addWithZip

    brokenZipper

    brokenZipperWith


addWithZip = do
    let arr1 = [1, 2, 3, 4, 5]
    let arr2 = [1, 2, 3, 4, 5]

    print $map (\(x, y) -> x + y) (zip arr1 arr2)

brokenZipper = do 
    let arr1 = [23, -6, 48, 54, 12, -5]
    let arr2 = [15, -3, 55, 3, -4, 6]

    print $map (\(x, y) -> if x < 0 || y < 0 then 0 else x + y) (zip arr1 arr2)

brokenZipperWith = do
    let arr1 = [23, -6, 48, 54, 12, -5]
    let arr2 = [15, -3, 55, 3, -4, 6] 

=======
main :: IO ()
main = do
    addWithZip

    brokenZipper

    brokenZipperWith


addWithZip = do
    let arr1 = [1, 2, 3, 4, 5]
    let arr2 = [1, 2, 3, 4, 5]

    print $map (\(x, y) -> x + y) (zip arr1 arr2)

brokenZipper = do 
    let arr1 = [23, -6, 48, 54, 12, -5]
    let arr2 = [15, -3, 55, 3, -4, 6]

    print $map (\(x, y) -> if x < 0 || y < 0 then 0 else x + y) (zip arr1 arr2)

brokenZipperWith = do
    let arr1 = [23, -6, 48, 54, 12, -5]
    let arr2 = [15, -3, 55, 3, -4, 6] 

>>>>>>> 44598e8c1b14bb02d47c8c44233df3d9969c76e4
    print $zipWith (\x y -> if x < 0 || y < 0 then 0 else x + y) arr1 arr2