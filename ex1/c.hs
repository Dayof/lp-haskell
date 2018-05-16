union :: [Int] -> [Int] -> [Int]
union x y = x ++ y

-- 1st result [1, 2, 3, 3, 4, 4, 5]
-- 2nd result [3, 4, 4, 1, 1, 2]
main = do
 print (union [1, 2, 3] [3, 4, 4, 5])
 print (union [3, 4, 4] [1, 1, 2])
