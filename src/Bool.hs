module Bool where

import Prelude hiding (not,and,or)


-- >>> true 1 2
-- 1
true :: p1 -> p2 -> p1
true x y = x

-- >>> false 1 2
-- 2

false :: p1 -> p2 -> p2
false x y = y


-- >>> bool false 1 2
-- 2

isbool :: ((p4 -> p5 -> p4) -> (p6 -> p7 -> p7) -> t) -> t
isbool b = b true false

-- >>> (not true) 1 2 
-- 2

-- >>> (not false) 1 2
-- 1

not :: ((p4 -> p5 -> p5) -> (p6 -> p7 -> p6) -> t) -> t
not b = b false true

-- >>> (or false false) 1 2
-- 2

-- >>> (or false true) 1 2
-- 1

-- >>> (or true false) 1 2
-- 1

-- >>> (or true true) 1 2
-- 1

or :: ((p1 -> p2 -> p1) -> t) -> t
or b1 = b1 true


-- >>> (and false false) 1 2
-- 2

-- >>> (and false true) 1 2
-- 2

-- >>> (and true false) 1 2
-- 2

-- >>> (and true true) 1 2
-- 1

and :: (t1 -> (p1 -> p2 -> p2) -> t2) -> t1 -> t2
and b1 b2 = b1 b2 false 



