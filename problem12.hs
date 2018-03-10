import Data.List
data MultSing a = Multiple Int a | Single a deriving Show

decodeModified :: [MultSing a] -> [a]
decodeModified = concatMap helper
                where
                    helper (Single a) = [a]
                    helper (Multiple i a) = replicate i a
