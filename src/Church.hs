{-# LANGUAGE RankNTypes #-}
module Church where

type ChurchNumeral = forall a. (a->a)->a->a

identity x = x

-- >>> id 1 == identity 1
-- True

-- >>>zero id 2
-- 2
zero :: ChurchNumeral
zero x y = y

-- >>> once not True 
-- False
once :: ChurchNumeral
once x = x

-- >>> twice not True
-- True
twice :: ChurchNumeral
twice x y = x (x y)

--- >>> thrice not True
-- False

thrice :: ChurchNumeral
thrice x y = x (x (x y))


-- >>> (churchNumber 101) not True
-- False

churchNumber :: Integer -> ChurchNumeral
churchNumber 0 = \x y -> y -- Base
churchNumber n = \x y -> x (churchNumber (n-1) x y) -- Recursivo

-- >>> printChurch (churchNumber 20000000)
-- 20000000
printChurch :: ChurchNumeral -> Integer
printChurch n = n (+ 1) 0

-- >>>printChurch (sigma thrice)
-- 4

sigma:: ChurchNumeral -> ChurchNumeral
sigma n x y = x (n x y)

-- >>> printChurch (sumar thrice (sumar thrice twice))
-- 8
sumar:: ChurchNumeral -> ChurchNumeral -> ChurchNumeral
sumar n m f y = n f (m f y)

-- >>> printChurch (thrice + (thrice + twice))

-- >>> printChurch (multi (churchNumber 20) thrice)
-- 60
multi::ChurchNumeral -> ChurchNumeral -> ChurchNumeral
multi n m f = n (m f)


-- >>> printChurch (twice . thrice)
-- 6

type Function = forall a. (a->a)
type Arg = forall a. a

bluebird :: Function -> Function -> a -> a
bluebird f g a = f (g a)






