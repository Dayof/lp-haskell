member :: Int -> [Int] -> Bool
member x [] = False
member x (y:ys)
 | x == y = True
 | otherwise = member x ys

difference :: [Int] -> [Int] -> [Int]
difference [] ys = []
difference (x:xs) ys
 | member x ys = difference xs ys
 | otherwise = x : difference xs ys

-- result [6]
main = print (difference [5, 4, 3, 6] [3, 4, 5])
