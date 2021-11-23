module Cadenas where

-- Show is un typeclass
-- Eq
-- Num

-- Integer (Type)
-- String (Type)

-- >>> :t print
-- print :: Show a => a -> IO ()


-- >>> :t show
-- show :: Show a => a -> String


-- >>>:t putStrLn
-- putStrLn :: String -> IO ()


-- >>>:t "Hola"
-- "Hola" :: [Char]

comma :: Show a => [a] -> [Char]
comma [] = ""
comma (c:rest) = show c ++ "," ++ comma rest  

-- >>> comma [1,2,3,4,5,6,7,8]
-- "1,2,3,4,5,6,7,8,"

numero = 10

miCadena :: String
miCadena = "Mi cadena"

agregar n c = c ++ " " ++ show n

-- >>> agregar numero miCadena
-- "Mi cadena 10"


