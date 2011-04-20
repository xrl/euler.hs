import Factor

main :: IO ()
main = putStrLn $ show $ ([1..1] `evenDiv` [1..20]) !! 1
     where evenDiv x y = zipWith (==) x y
