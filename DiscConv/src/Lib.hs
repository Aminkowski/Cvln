module Lib where

a1 = [9, 2, 5] 
a2 = [3, 1, 15]
larray :: (Eq a, Num a) => [a] -> [a] -> [ [a] ]
larray l1 l2 = if (l2 /= []) then ( map (*(head l2)) l1 ) : larray l1 (tail l2) else []
convind :: (Eq a, Num a) => [a] -> [a] -> Int -> a 
convind l1 l2 n = if (n<0) then 0 else 
    if (l1 == []) then 0 else 
        if (n < length l2) then head( (larray l1 l2) !! n ) + convind (tail l1) l2 (n - 1) else
           convind (tail l1) l2 (n - 1)
lconv :: (Eq a, Num a) => [a] -> [a] -> [a]
lconv l1 l2 = map (convind l1 l2 ) [0..((length l1)+(length l2)-2)]


