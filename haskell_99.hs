--  UFRN/IMD/2018
-- ALUNO GUSTAVO BATISTA DE ARAÚJO GORGÔNIO

-- https://wiki.haskell.org/H-99:_Ninety-Nine_Haskell_Problems 


problem_1 :: [a] -> a
problem_1 [] = undefined
problem_1 [x] = x 
problem_1 (x:xs) = problem_1 xs

problem_2 :: [a] -> a
problem_2 [] = undefined
problem_2 [x] = undefined
problem_2 (x:[y]) = x
problem_2 (x:xs) = problem_2 xs

problem_3 :: [a] -> Integer -> a
problem_3 [] i = undefined
problem_3 (x:xs) 1 = x
problem_3 (x:xs) i = problem_3 xs (i - 1)

problem_4 :: [a] -> Integer
problem_4 [] = 0
problem_4 (x:xs) = 1 + problem_4 xs

problem_5 :: [a] -> [a]
problem_5 [] = []
problem_5 (x:xs) = problem_5 xs++[x]

problem_6 :: Eq a => [a] -> Bool
-- problem_6 x = x == problem_5 x -- thats another to do this
problem_6 x = if x == (problem_5 x) then True else False

data NestedList a = Elem a | List [NestedList a]
problem_7 :: NestedList a -> [a]
problem_7 (Elem x) = [x]
