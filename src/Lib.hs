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
                     , pGender        :: String
                     , pMaritalStatus :: String
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
-- TODO: implement czech salutation which passes the tests
czechSalutation :: Person -> String
czechSalutation = undefined

-------------------------------------------------------------------------------
-- DO NOT EDIT DATA TYPE!
-- https://en.wikipedia.org/wiki/Allen%27s_interval_algebra
--                                          X      Y
data AllensIAlgebraRelation a = Equals   (a, a) (a, a) -- X = Y
                              | Before   (a, a) (a, a) -- X < Y
                              | Meets    (a, a) (a, a) -- X m Y
                              | Overlaps (a, a) (a, a) -- X o Y
                              | Starts   (a, a) (a, a) -- X s Y
                              | During   (a, a) (a, a) -- X d Y
                              | Finishes (a, a) (a, a) -- X f Y
                             deriving (Show, Read, Eq)

-- | Compare two intervals given as tuples and return appropriate
-- | Allen's Interval Algebra relation between them
-- TODO: implement Allen's algebra relation detection of intervals
allensComparison :: Ord a => (a, a) -> (a, a) -> AllensIAlgebraRelation a
allensComparison = undefined

-------------------------------------------------------------------------------
-- DO NOT EDIT DATA TYPE!
data Shape2D = Circle { spRadius :: Int }
             | Square { sqSide :: Int }
             | Rectangle { reWidth :: Int, reHeight :: Int }
             | Triangle { triSideA :: Int, triSideB :: Int, triSideC :: Int }
             deriving (Show, Read, Eq)

-- TODO: implement circumference calculation for 2D shapes
shapeCircumference :: Shape2D -> Int
shapeCircumference = undefined

-- TODO: implement area calculation for 2D shapes
shapeArea :: Shape2D -> Int
shapeArea = undefined

-------------------------------------------------------------------------------
-- | Geometric series as infinite list
-- | https://en.wikipedia.org/wiki/Geometric_series
-- TODO: implement geometric series
geometricSeries :: Integer -> Integer -> [Integer]
geometricSeries a r = undefined

-- TODO: implement infinite list of primes [2, 3, 5, 7, 11, ...]
primes :: [Integer]
primes = undefined

-- | Euler's totient function
-- | https://en.wikipedia.org/wiki/Euler%27s_totient_function
-- TODO: implement phi(n) by using search in primes
phi :: Integer -> Integer
phi n = undefined

-------------------------------------------------------------------------------
-- !!! DO NOT COPY, JUST IMPORT (avoid conflicts, pick the best option for you)
-- iii visit the content of modules
-- TODO: replace undefined with "example1" from Data.DummyList.Examples module
dummyListExample1 = undefined
-- TODO: replace undefined with "example2" from Examples module
stringExample2 = undefined
-- TODO: replace undefined with "example2" from Examples module
stringExample3 = undefined
