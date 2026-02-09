module Lib where

-------------------------------------------------------------------------------
-- DO NOT EDIT DATA TYPES!
data MaritalStatus = Single | Married | Widowed
                   deriving (Show, Read, Eq)

data Gender = Male | Female
            deriving (Show, Read, Eq)

data AcademicTitle = DiS | Bc | Mgr | Ing | PhDr | MUDr | PhD | Doc | Prof
                   deriving (Show, Read, Ord, Eq, Bounded, Enum)

data Person = Person { pFirstname     :: String
                     , pLastname      :: String
                     , pGender        :: Gender
                     , pMaritalStatus :: MaritalStatus
                     , pAge           :: Int
                     , pATitles       :: [AcademicTitle]
                     }

-- | Full czech salutation (in nominative - i.e. první pád)
-- |
-- | "pan doktor Pavel Novák", "paní inženýrka Karolína Šťastná"
-- | "slečna Petra Králová", "Jan" (kid)
-- | if younger than 15 -> kid -> just firstname
-- | if female younger than 25 without academic title and single -> "slečna"
-- | otherwise "pan/paní" depending on the gender
-- | if academic titles, pick the most important (nothing for DiS and Bc)
-- |
-- | https://www.muni.cz/o-univerzite/uredni-deska/oslovovani-akademickych-pracovniku
-- | http://www.etiketavse.estranky.cz/clanky/etiketa/4.-oslovovani-a-spolecenska-vyznamnost.html
-- | http://www.studenta.cz/vysokoskolske-tituly-jak-oslovovat-na-akademicke-pude/magazin/article/587
-- TODO: implement czech salutation which passes the tests
czechSalutation :: Person -> String
czechSalutation = undefined

-------------------------------------------------------------------------------
-- DO NOT EDIT DATA TYPE!
-- https://en.wikipedia.org/wiki/Interval_(mathematics)
data IntervalBoundary = PositiveInfinity
                      | NegativeInfinity
                      | Inclusive Double
                      | Exclusive Double
                      deriving (Show, Read, Eq)

data Interval = Empty
              | Interval IntervalBoundary IntervalBoundary
              | Union [Interval]
              | Intersection [Interval]
              | AllNumbers
              deriving (Show, Read, Eq)

-- | Check if number is in given interval
intervalContains :: Interval -> Double -> Bool
intervalContains = undefined

-------------------------------------------------------------------------------
-- DO NOT EDIT DATA TYPE!
data Shape2D = Circle { ciRadius :: Double }
             | Square { sqSide :: Double }
             | Rectangle { reWidth :: Double, reHeight :: Double }
             | Triangle { triSideA :: Double, triSideB :: Double, triSideC :: Double }
             deriving (Show, Read, Eq)

-- TODO: implement circumference calculation for 2D shapes
shapeCircumference :: Shape2D -> Double
shapeCircumference = undefined

-- TODO: implement area calculation for 2D shapes
shapeArea :: Shape2D -> Double
shapeArea = undefined

-------------------------------------------------------------------------------
-- | Geometric sequence as infinite list
-- | https://en.wikipedia.org/wiki/Geometric_progression
-- TODO: implement geometric series
geometricSequence :: Num b => b -> b -> [b]
geometricSequence a r = undefined


-- TODO: implement infinite list of fibonacciNumbers [0, 1, 1, 2, 3, 5, ...]
fibonacciNumbers :: [Integer]
fibonacciNumbers = undefined

-- TODO: multiply matrices x and y
-- TODO: use list comprehension!!!
-- https://en.wikipedia.org/wiki/Matrix_multiplication
-- Note: sublists are rows
-- if wrong sizes, raise error "Incorrect matrix sizes" (use "error" function)
matrixMultiplication :: Num a => [[a]] -> [[a]] -> [[a]]
matrixMultiplication x y = undefined
-------------------------------------------------------------------------------
-- !!! DO NOT COPY, JUST IMPORT (avoid conflicts, pick the best option for you)
-- iii visit the content of modules
-- TODO: replace undefined with "example1" from Data.DummyList.Examples module
dummyListExample1 = undefined
-- TODO: replace undefined with "example2" from Data.MyString.Examples module
stringExample2 = undefined
-- TODO: replace undefined with "example3" from Data.MyString.Examples module
stringExample3 = undefined
