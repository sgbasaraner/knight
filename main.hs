import System.Environment
import Data.Char

checkIfCorrectArgument :: String -> Bool
checkIfCorrectArgument x =
    (length x == 2) &&
    toLower (head x) `elem` letters &&
    head (tail x) `elem` numbers where
        letters = ['a'..'h']
        numbers = ['1'..'8']


main = do
    args <- getArgs
    putStrLn $ show (checkIfCorrectArgument (head args))