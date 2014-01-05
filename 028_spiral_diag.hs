-- If we analyze spirals with size n
-- we will see, that ascending diagonal (/) is formed from 
-- all odd squares and all even squares plus 1.
-- So we can use formula n*(n+1)*(2n+1)/6 to calculate sum of squares 
-- and then add amount of even numbers,
-- which, obviously, is n div 2
-- As for descending diagonal (\)
-- we can see, that each element is formed of n^2+(n+1) till n-1.
-- So this diagonal is a sum of squares 1..n-1 plus sum of range (2..n).
-- If we combine both formulas, we get this:

diagSum n = ((4 * n + 3) * n + 8) * n `div` 6 - 1

main = print $ diagSum 1001
