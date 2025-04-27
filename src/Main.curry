-- Returns the last number of a list.
last :: [Int] -> Int
last (_ ++ [x]) = x

-- Returns some permutation of a list.
perm :: [a] -> [a]
perm []     = []
perm (x:xs) = insert (perm xs)
 where insert ys     = x : ys
       insert (y:ys) = y : insert ys

       
main = perm "XYZ"