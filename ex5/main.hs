addNum :: Int -> (Int -> Int)
addNum n = (+n)

main = print (addNum 2 3)
