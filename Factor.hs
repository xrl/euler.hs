-- Xavier's Factorization Module
module Factor where

t_factors :: (Integral a) => a -> a -> [a] -> [a]
t_factors curNum biggestYet myFactors = if curNum `isMultiple` biggestYet
                                        then t_factors (curNum `div` biggestYet) 

factors :: (Integral a) => a -> [a]
factors x = l_factors x x 2 []

isMultiple :: (Integral a) => a -> a -> Bool
isMultiple divisor number
       | divisor > number  = False
       | otherwise         = (number `mod` divisor) == 0

l_factors :: (Integral a) => a-> a -> a -> [a] -> [a]
l_factors _ _ 1 list = list
l_factors orig divisee current_divisor list
--     | debug = undefined
     | current_divisor > divisee = list
     | current_divisor `isMultiple` divisee = (l_factors orig (divisee `div` current_divisor) (current_divisor+1) (current_divisor:list))
     | otherwise                            = (l_factors orig (divisee) (current_divisor+1) (list        ))
--   where debug = (trace ("divisee: "++show divisee++" current_divisor: "++show current_divisor++" list: "++show list) False)

data NestedList a = Elem a | List [NestedList a]

flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (List x) = concatMap flatten x

isDivisible xs y = [(flip mod y x) == 0 | x <- xs]
theGoods = [x | x <- [1..], and $ isDivisible [1..20] x]
