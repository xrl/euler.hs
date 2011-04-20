import Factor

main :: IO ()
main = putStrLn $ show $ maximum $ factors 600851475143 
