palind x = read (reverse $ show x) :: Int

main = print $ maximum [z|x<-[999,998..900], y<-[999,998..900], let z = x*y, z == palind z]
