data Expr = Lit Int |
 Add Expr Expr |
 Sub Expr Expr |
 Mult Expr Expr

eval :: Expr -> Int
eval (Lit n) = n
eval (Add e1 e2) = (eval e1) + (eval e2)
eval (Sub e1 e2) = (eval e1) - (eval e2)
eval (Mult e1 e2) = (eval e1) * (eval e2)

main = print (eval (Mult (Lit 2) (Lit 3) ) )
