module Factor where

factors :: (Integral a) => a -> [a]
factors x = l_factors x 2 []

l_factors :: (Integral a) => a -> a -> [a] -> [a]
l_factors 1      _       list = list
l_factors number divisor list
          | invalid      = [-1]
          | goesInEvenly = l_factors nextNumber divisor     (divisor:list)
          | otherwise    = l_factors number     nextDivisor list
          where goesInEvenly = (number `mod` divisor == 0)
                nextNumber   = (number `div` divisor)
                nextDivisor  = divisor+1
                keepGoing    = (number /= 1)
                invalid      = number < divisor

primes = [x | x <- [1..], (length $ factors x) == 1]
