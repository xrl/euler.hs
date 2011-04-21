import Factor
import Data.List

-- maxOccurrencesOf :: (Integral a) => [[a]] -> a -> a
longestSublistOf lists entry = maximum [length $ filter (==entry) list | list <- lists]

main :: IO ()
main = putStrLn $ show $ answer
       where nestedFactors = [factors x | x <- [1..20]]
             allFactors = nub $ concat nestedFactors
             numberNecessary factor = longestSublistOf nestedFactors factor
             nestedFactorsNecessary = [take (numberNecessary factor) $ repeat factor | factor <- allFactors]
             factorsNecessary       = concat nestedFactorsNecessary
             answer                 = product factorsNecessary
