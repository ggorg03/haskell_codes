-- -- These are my way to define the fuctions of the chapter 2 of LYAH -- --

-- Takes the first element of a list and returns this
g_head :: [a] -> a
g_head [] = undefined
g_head (x:xs) = x

-- Remove the first element of the list and returns the rest
g_tail :: [a] -> [a]
g_tail [] = [] 
g_tail (x:xs) = xs

-- Returns the last element of the list
g_last :: [a] -> a
g_last [] = undefined
g_last [x] = x
g_last (x:xs) = g_last xs

-- Remove the last element of the list and returns the rest
g_init :: [a] -> [a]
g_init [] = []
g_init [x] = []
g_init (x:(y:ys)) = [x] ++ g_init (y:ys)

-- Counts the number of elements in the list
g_length :: [a] -> Integer
g_length [] = 0
g_length (x:xs) = 1 + g_length xs
 
-- Tell us if the list is empty or not
g_null :: [a] -> Bool
g_null [] = True
g_null x = False

-- Gives us the first n elements of a list
g_take :: Integer -> [a] -> [a]
g_take 0 y = []
g_take x [] = []
g_take x (y:ys) = [y] ++ g_take (x - 1) ys

-- Removes the first n elements of a list and returns the rest
g_drop :: Integer -> [a] -> [a]
g_drop 0 y = y
g_drop x [] = []
g_drop x (y:ys) = g_drop (x - 1) ys

-- Gives us the smallest element of the list
g_min :: Ord a => [a] -> a
g_min [] = undefined
g_min [x] = x
g_min (x:(y:ys)) = if x > y then g_min (y:ys) else g_min (x:ys)

-- Gives us the biggest element of the list
g_max :: Ord a => [a] -> a
g_max [] = undefined
g_max [x] = x
g_max (x:(y:ys)) = if x > y then g_max (x:ys) else g_max (y:ys)

-- Returns the sume of all elements in the list
g_sum :: Num a => [a] -> a
g_sum [] = undefined
g_sum [x] = x
g_sum (x:xs) = x + g_sum xs

-- Returns the multiple of all elements in the list
g_product :: Num a => [a] -> a
g_product [] = undefined
g_product [x] = x
g_product (x:xs) = x * g_product xs

-- Tell us if a certain element is in the list
g_elem :: Ord a => a -> [a] -> Bool
g_elem x [] = False
g_elem x (y:ys) = if x == y then True else g_elem x ys

-- factorial is not a lyah's fuctions, i did cause i want :b
factorial :: Integer -> Integer
factorial 0 = 1
factorial x = x * factorial (x - 1)
