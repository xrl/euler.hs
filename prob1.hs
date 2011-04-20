main :: IO ()
main = putStrLn $ show $ sum [x | x <- [0..1000], x `mod` 3 == 0 || x `mod` 5 == 0]
