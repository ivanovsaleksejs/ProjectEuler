-- More general solution must be done

sumDig = sum . map length

countP = sumDig ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

countTeen = sumDig ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

countTen  = sumDig ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

main = print $ length ("one" ++ "thousand")
     + (length "and" * 99 * 9)
     + (countTeen * 10)
     + (countTen * 100)
     + (countP * 90)
     + (countP * 100)
     + (length "hundred" * 900)
