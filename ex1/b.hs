member :: Int -> [Int] -> Bool
member x [] = False
member x (y:ys)
 | x == y = True
 | otherwise = member x ys

intersection :: [Int] -> [Int] -> [Int]
intersection [] ys = []
intersection (x:xs) ys
 | member x ys = x : intersection xs ys
 | otherwise = intersection xs ys

-- 1st result [3]
-- 2nd result []
main = do
 print (intersection [1, 2, 3] [3, 4, 5])
 print (intersection [3, 4] [1, 2])
