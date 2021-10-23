module Church where

identity x = x

-- >>> id 1 == identity 1
-- True

-- >>>zero id 2
-- 2
zero x y = y

-- >>> (const id) 1 2 == zero 1 2
-- True

-- >>> once not True 
-- False
once x = x

-- >>> twice not True
-- True
twice x y = x (x y)

--- >>> thrice not True
-- False

thrice x y = x (x (x y))


-- >>> printChurch zero
-- 0
printChurch n = n (\x -> x + 1) 0

-- >>>printChurch (sigma thrice)
-- 4

sigma n x y = x (n x y) 

-- >>> printChurch (suma twice thrice) = 5



