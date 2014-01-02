import qualified Euler.Func as F (sumDigits)

main = print . F.sumDigits $ product [1..100]
