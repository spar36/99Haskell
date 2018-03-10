data MultSing a = Multiple Int a | Single a deriving Show

encodeDirect :: (Eq a) => [a] -> [MultSing a]
encodeDirect [] = []
encodeDirect (x:xs) = encodeHelper x xs 1
    where
        encodeHelper y [] n = [encode n y]
        encodeHelper y (x:xs) n | y == x = encodeHelper x xs (n+1)
                                | otherwise = encode n y : (encodeHelper x xs 1)

encode :: Int -> a -> MultSing a
encode 1 a = Single a
encode n a = Multiple n a
