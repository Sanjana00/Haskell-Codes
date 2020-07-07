import Data.List

largest n = read (reverse (sort (show n)))::Int

smallest n = read (sort (show n))::Int

difference n = (largest n) - (smallest n)

kaprekar n = if n == 6174 then [n] else [n] ++ kaprekar (difference n)

main = do
    print "Enter a four digit number"
    input <- getLine
    let n = read input::Int
    if mod n 1111 == 0 then print "Invalid input" else print (kaprekar n)
