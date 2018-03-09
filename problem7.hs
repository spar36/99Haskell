data Nested a = Elem a | List [Nested a]

myFlatten :: Nested a -> [a]
myFlatten (Elem a) = [a]
myFlatten (List (x:xs)) = myFlatten x ++ myFlatten (List xs)
myFlatten (List []) = []
