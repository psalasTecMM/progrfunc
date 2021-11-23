module Arreglos where

import Prelude hiding (length,compare,max,min,equal)

-- Arreglos

-- >>> []
-- []

-- >>> [1,2,3,4]
-- [1,2,3,4]

arr :: [Integer]
arr = [1,2,3,4]

arr2 :: [String]
arr2 = ["Hola","Mundo"]

alphabet :: [Char]
alphabet = ['a','b']

-- Range definition
-- >>> [1..10]
-- [1,2,3,4,5,6,7,8,9,10]

-- >>> [2,4..10]
-- [2,4,6,8,10]

-- >>> [1,3..15]
-- [1,3,5,7,9,11,13,15]


-- Colon Operator
-- (:) :: a -> [a] -> [a]

-- >>> 5:[1,3,4]
-- [5,1,3,4]

-- Prefix operations
-- op arg1 arg2
-- Infix operations
-- arg1 : arg2

-- Lenght of an array

-- >>> length [1,2,3,4,5]
-- 5

length [] = 0
length (item:rest) = 1 + length rest

-- length [1,2,3,4]
-- (\xy -> x+y) 1 (length [2,3,4])
-- 1+(length [2,3,4])
-- 1+ ((\xy -> x+y) 1 (length [3,4]))
-- 1+ (1 + (length [3,4]))
-- 1+ (1 + ((\xy -> x+y) 1 (length [4]))
-- 1+ (1 + (1 + (length [4]))
-- 1+ (1 + (1 + ((\xy -> x+y) 1 (length [])))
-- 1+ (1 + (1 + (1 + (length [])))
-- 1+ (1 + (1 + (1 + (0)))
-- 4

-- Concat Operator
-- (++) :: [a] -> [a] -> [a]

-- >>> potencia [1,2,3] 3
-- [1,2,3,1,2,3,1,2,3]
potencia s 0 = []
potencia s n = s ++ potencia s (n-1)

-- def potencia(s, n):
--     result = ""
--     for(int i = 0; i<n; i++){
--         result.concat(s)
--     } 
--     return result;

-- def potencia(s,n):
--     if(n==0) return ""
--     return s.concat(potencia(s,n-1))

-- (!!) Operator
-- (!!) :: [a] -> Int -> a

-- >>> [1,2,3,4] !! 4
-- Prelude.!!: index too large

-- >>> extract [1,2,3,4] 2 0
-- 3
extract :: (Eq t, Num t) => [p] -> t -> t -> p
extract [] i acc = error "Indice fuera del arreglo"
extract (x:xs) i acc = if i == acc then x else extract xs i (acc+1)

-- >>> extract2 [1,2,3,4] 2
-- 3
extract2 :: (Eq t, Num t) => [p] -> t -> p
extract2 [] n = error "Indice fuera del rango"
extract2 (x:_) 0 = x
extract2 (x:xs) i = extract2 xs (i-1)


-- >>> top "Hola mundo!"
-- 'H'

top (x:xs) = x

-- >>> rest "Hola mundo!"
-- "ola mundo!"

rest (x:xs) = xs


-- >>> max1 [3,4,5,6,1,2,3]
-- 6

max1 (x:y:xs) = if x < y then max1 (y:xs) else max1 (x:xs)
max1 x = top x

compare :: (p -> p -> Bool) -> [p] -> p
compare f (x:y:xs) = if f x y then compare f (y:xs) else compare f (x:xs)
compare f x = top x

max x y = x < y

min x y = x > y

equal x y = x==y
-- >>> compare max [3,4,5,6,1,2,3]
-- 6


-- Promedio de una lista??

-- prom [1,2,3,4,5,6,7] = 4

-- Suma de una lista

--- sum [1,2,3] = 6

-- Producto de una list

-- prod [1,2,3,4,5] = 120  ? factorial!

-- Tuplas

-- >>> (1,2)
-- (1,2)

type Alphabet = [Char]
type Estados = [String]
type Delta = [String]->String->String

type Automata = (Estados, Alphabet,Delta,String,Estados)

