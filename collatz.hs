term n = if odd n then (3 * n + 1) else quot n 2

collatz 4 = [4,2,1]
collatz n = [n] ++ collatz (term n)

main = do
    print "Input a number"
    input <- getLine
    let n = read input::Int
    print $ collatz n
