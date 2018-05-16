import Data.List

is_desc_sort :: [Int] -> Bool
is_desc_sort xs = reverse (sort xs) == xs

is_desc :: [Int] -> Bool
is_desc [] = True
is_desc [x] = True
is_desc (x:y:xs) = x >= y && is_desc xs

zip' :: [Int] -> [(Int, Int)]
zip' xs = zip (init xs) (tail xs)
is_desc_fmz :: [Int] -> Bool
is_desc_fmz xs = foldr (&&) True (map (\(a, b) -> a >= b) (zip' xs))


main = do
 print (is_desc_sort [2, 5, 8, 2, 4, 9]) -- False
 print (is_desc_sort [5, 5, 1]) -- True
 print (is_desc [2, 5, 8, 2, 4, 9]) -- False
 print (is_desc [5, 5, 1]) -- True
 print (is_desc_fmz [2, 5, 8, 2, 4, 9]) -- False
 print (is_desc_fmz [5, 5, 1]) -- True
