import Palindrome

main :: IO ()
main = putStrLn $ show $ maximum $ [x*y | x <- [100..999], y <- [100..999], isPalindrome (x*y)]
