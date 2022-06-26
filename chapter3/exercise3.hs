-- exercise3.hs
module Exercise3 where

myString :: String
myString = "Curry is awesome!"

thirdLetter :: String -> Char
thirdLetter x = (!!) x 3

letterIndex :: Int -> Char
letterIndex x = myString !! x

rvrs x = drop (9) x ++ " "++ (take (2) (drop (6) x)) ++ " " ++ take (5) x


main :: IO()
main = do
  putStrLn concatMyString
  putStrLn outputWord
  where
    concatMyString = myString ++ "!"
    outputWord = drop (9) myString
