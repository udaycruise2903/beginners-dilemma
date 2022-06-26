sayHello :: String -> IO()
sayHello x =
  putStrLn ("hello, " ++ x ++ "!")

half x = x / 2

square x = x * x

areaOfCircle x = pi * (square x)
