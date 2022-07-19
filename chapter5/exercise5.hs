module Exercise5 where

i :: a -> a
i = id

c :: a -> b -> a
c = const

c'' :: b -> a -> b
c'' = undefined

c' :: a -> b -> b
c' = undefined

r :: [a] -> [a]
r = undefined

co :: (b -> c) -> (a -> b) -> a -> c
co = undefined

a :: (a -> c) -> a -> a
a = undefined

a' :: (a -> b) -> a -> b
a' = undefined
