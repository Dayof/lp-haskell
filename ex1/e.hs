last_elem :: [Int] -> Int
last_elem [x] = x
last_elem (x:xs) = last_elem xs

main = do
 print (last_elem [1, 5, 8]) -- 8
 print (last_elem [1, 5, 5, 6, 8, 1, 2]) -- 2
