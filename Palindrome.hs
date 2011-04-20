module Palindrome where
isPalindrome :: Int -> Bool
isPalindrome x = xStr == reverse xStr
      where xStr = show x
