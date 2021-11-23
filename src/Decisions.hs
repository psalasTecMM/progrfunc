
-- if ... then .. else

-- >>> mensaje "Hola mundo"
-- 10

mensaje m = if m == "Hola mundo" then 10 else 20

-- >>> mayor 1 2
-- "Menor"
mayor n m = if n > m then "Mayor" else if n==m then "Iguales" else "Menor"


-- Guards

-- >>> mayor2 4 4
-- "Iguales"

mayor2 n m
    | n > m = "Mayor"
    | n == m = "Iguales"
    | otherwise = "Menor"


-- Case expressions


-- >>> tipoPajaro "Bluebird"
-- "\\ x y z -> x (y z)"

tipoPajaro name =
    case name of
        "Kestral" -> "\\ x y -> x"
        "Bluebird" -> "\\ x y z -> x (y z)"
        _ -> "Not found"

-- Parameter pattern matching

-- >>> fibonacci 6
-- 13
fibonacci 0 = 1
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci(n-2)

-- >>> factorial 0
-- ProgressCancelledException

factorial 0 = 1
factorial n = n * factorial (n-1)


-- >>> mensaje3 ""
-- "No tienes mensaje"

mensaje3 :: [Char] -> [Char]
mensaje3 "Juan" = "Perez"
mensaje3 "" = "No tienes mensaje"
mensaje3 "Oscar" = "Alejandro"
mensaje3 m = m
