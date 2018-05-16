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

sort_desc :: [Int] -> [Int]
sort_desc [] = []
sort_desc (x:xs) = sort_desc [e | e <- xs, e >= x] ++ [x] ++ sort_desc [e | e <- xs, e < x]

main = do
 print (no_duplicate (sort_desc [2, 5, 8, 2, 4, 9])) -- [9, 8, 5, 4, 2]
 print (no_duplicate (sort_desc [1, 5, 5])) -- [5, 1]
