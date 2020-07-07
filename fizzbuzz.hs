fizz = cycle ["", "", "FIZZ"]

buzz = cycle ["", "", "", "", "BUZZ"]

fb = zipWith (++) fizz buzz

pick a b = if null a then b else a

fizzbuzz = zipWith pick fb $ map show [1..]

main = do
    print "Enter number of terms"
    input <- getLine
    let n = read input::Int
    print $ take n fizzbuzz
