-- print3flipped.hs
module Print3Flipped where

myGreeting :: String
myGreeting = (++) "hello" "world"

hello :: String
hello = "hello"

world :: String
world = "world!"

main :: IO()
main = do
  PutStrLn myGreeting
  PutStrLn secondGreeting
  where secondGreeting =
          (++) hello ((++) " " world)
