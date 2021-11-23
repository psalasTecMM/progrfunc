module Programas where
import Data.Foldable (Foldable(null))


-- Lenguage {"ab","aac"}

-- Concat

concat :: String -> String -> String
concat s r = s ++ r

-- Pow of a languages
-- L^0 = {""}
-- L^n+1 = LL^n

pow :: (Eq t, Num t) => [a] -> t -> [a]
pow l 0 = []
pow l n = l ++ pow l (n-1)

-- >>> pow [1,2,3] 3
-- [1,2,3,1,2,3,1,2,3]


-- Palindromos

-- aba -> True
-- aabbaa -> True
-- abaa -> False
-- anitalavalatina -> True

-- >>> pali [0,1,0,1,0]
-- True

-- >>> getLast "aba"
-- 'a'
getLast :: [p] -> p
getLast [] = error "Empty array"
getLast [x] =  x
getLast (x:xs) = getLast xs

-- removeLast [1,2,3,4]
-- [1,2,3]
removeLast [] = []
removeLast [x] = []
removeLast (x:xs) = x : removeLast xs

pali [] = True
pali [x] = True
pali (x:rest) = (x == getLast rest) && pali (removeLast rest)

-- pali "aba"
-- (a == getLast ba) && pali (removeLast ba)
-- (a == (getLast a)) && pali (removeLast ba)
-- (a == a) && pali (removeLast ba)
-- True && pali ([b : removeLast a])
-- True && pali b
-- True && True



