{-# LANGUAGE RankNTypes #-}
module Bool where

import Prelude hiding (not,and,or)

type Boolean = forall a. a->a->a

-- >>> true 1 2
-- 1
true :: Boolean
true x y = x

-- >>> false 1 2
-- 2
false:: Boolean
false x y = y


-- >>> bool false 1 2
-- 2
isbool :: Boolean -> Boolean
isbool b = b true false

-- >>> (not true) 1 2 
-- 2

-- >>> (not false) 1 2
-- 1

not:: Boolean -> Boolean
not b = b false true

-- >>> (or false false) 1 2
-- 2

-- >>> (or false true) 1 2
-- 1

-- >>> (or true false) 1 2
-- 1

-- >>> (or true true) 1 2
-- 1
or:: Boolean -> Boolean -> Boolean
or b1 = b1 true


-- >>> (and false false) 1 2
-- 2

-- >>> (and false true) 1 2
-- 2

-- >>> (and true false) 1 2
-- 2

-- >>> (and true true) 1 2
-- 1
and:: Boolean -> Boolean -> Boolean
and b1 b2 = b1 b2 false



