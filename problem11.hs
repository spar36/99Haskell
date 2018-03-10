import Data.List
data MultSing a = Multiple Int a | Single a deriving Show

encodedModified :: (Eq a) => [a] -> [MultSing a]
encodedModified = map
                    (\x -> let size = length x in if size == 1
                                                then Single (head x)
                                                else Multiple size (head x))
                    . group
