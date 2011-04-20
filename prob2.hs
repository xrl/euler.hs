import Fibonacci

main :: IO ()
main = putStrLn $ show $ sum $ filter even $ takeWhile small fibs 
   where small x = x<4000000 -- (x<4000000 && even x)
