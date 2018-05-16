reverse_list :: [Int] -> [Int]
reverse_list [] = []
reverse_list (x:xs) = reverse_list xs ++ [x]

-- result [5, 4, 1]
main = print (reverse_list [1, 4, 5])
