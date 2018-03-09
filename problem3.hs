elementAt :: [a] -> Int -> a
elementAt [] _ = error "bad list"
elementAt (x:xs) 1 = x
elementAt xs a = if length xs < a
                        then error "bad index"
                        else elementAt (tail xs) (a - 1)
