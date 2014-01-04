paths x = product [x+1..x*2] `div` product [1..x]

main = print $ paths 20
