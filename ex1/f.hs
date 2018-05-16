n_elem :: [Int] -> Int -> Int
n_elem (x:xs) n
 | n <= 0 = x
 | otherwise = n_elem xs (n-1)

main = do
 print (n_elem [2, 5, 8] 1) -- 5
 print (n_elem [1, 5, 5, 6, 8, 1, 2] 4) -- 8
