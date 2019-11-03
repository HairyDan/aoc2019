fizz :: Int -> Bool
fizz x = if mod x 3 == 0
            then True
            else False

buzz :: Int -> Bool
buzz x = if mod x 5 == 0
            then True
            else False

fizzbuzz :: Int -> String
fizzbuzz x = if fizz x && buzz x then "fizzbuzz"
                else if fizz x then "fizz"
                else if buzz x then "buzz"
                else show x

run :: Int -> IO()
run x = mapM_ putStrLn (map fizzbuzz [1..x])
