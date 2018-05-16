member :: Int -> [Int] -> Bool
member x [] = False
member x (y:ys)
 | x == y = True
 | otherwise = member x ys

no_duplicate :: [Int] -> [Int]
no_duplicate [] = []
no_duplicate (x:xs)
 | member x xs = no_duplicate xs
 | otherwise = x : no_duplicate xs

union :: [Int] -> [Int] -> [Int]
union [] ys = no_duplicate ys
union (x:xs) ys
 | member x ys || member x xs = union xs ys
 | otherwise = x : union xs ys

-- 1st result [1, 2, 3, 4, 5]
-- 2nd result [3, 4, 1, 2]
main = do
 print (union [1, 2, 3, 2] [3, 4, 4, 5])
 print (union [3, 4, 4] [1, 1, 2])
