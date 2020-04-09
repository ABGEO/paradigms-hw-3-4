{-|
Module      : InfiniteFibonacci
Description : CST Programming Paradigms - Homework 3 and 4
Copyright   : (c) Temuri Takalandze, 2020
License     : MIT
Maintainer  : me@abgeo.dev
Stability   : experimental
Portability : POSIX
The InfiniteFibonacci module contains function 'fibonacci'
for calculating N Fibonacci numbers.
-}
module InfiniteFibonacci
  ( fibonacci
  ) where

-- The fibonacci function calculating N Fibonacci numbers.
fibonacci :: Int -> [[Integer]]
fibonacci n = do
  let fib = 0 : 1 : zipWith (+) fib (tail fib)
  let numbers = take n fib
  return numbers
