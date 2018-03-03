-- These are my way to define the fuctions of the chapter 2 of LYAH


g_head :: [a] -> a
g_head [] = undefined
g_head (x:xs) = x

g_tail :: [a] -> [a]
g_tail [] = [] 
g_tail (x:xs) = xs

g_last :: [a] -> a
g_last [] = undefined
g_last [x] = x
g_last (x:xs) = g_last xs

g_init :: [a] -> [a]
g_init [] = []
g_init [x] = []
g_init (x:(y:ys)) = [x] ++ g_init (y:ys)

g_length :: [a] -> Integer
g_length [] = 0
g_length (x:xs) = 1 + g_length xs
 
g_null :: [a] -> Bool
g_null [] = True
g_null x = False

g_take :: Integer -> [a] -> [a]
g_take 0 y = []
g_take x [] = []
g_take x (y:ys) = [y] ++ g_take (x - 1) ys

g_drop :: Integer -> [a] -> [a]
g_drop 0 y = y
g_drop x [] = []
g_drop x (y:ys) = g_drop (x - 1) ys

-- factorial is not a lyah's fuctions, i did cause i want
factorial :: Integer -> Integer
factorial 0 = 1
factorial x = x * factorial (x - 1)
