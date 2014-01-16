-- probably the shortest version
lcm_ x = foldl (lcm) 1 [1..x]

main = print $ lcm_ 20 
