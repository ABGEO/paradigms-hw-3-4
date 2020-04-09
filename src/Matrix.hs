{-|
Module      : Matrix
Description : CST Programming Paradigms - Homework 3 and 4
Copyright   : (c) Temuri Takalandze, 2020
License     : MIT
Maintainer  : me@abgeo.dev
Stability   : experimental
Portability : POSIX
The Matrix module contains function 'multiply'
for multiplying given matrices.
-}
module Matrix
  ( multiply
  ) where

-- The multiply function multiplies given A and B matrices.
multiply :: Num a => [[a]] -> [[a]] -> [[a]]
multiply matrixA matrixB = map (foldl1 (zipWith (+)) . zipWith (flip (map . (*))) matrixB) matrixA
