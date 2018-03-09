myButLast :: [a] -> a
myButLast [] = error "empty"
myButLast [a] = error "single elemnet"
myButLast (x:xs) = if length xs == 1
                        then x
                        else myButLast xs
