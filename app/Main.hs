module Main where

import Matrix
import InfiniteFibonacci

main :: IO ()
main = do
  -- Homework 3 - Matrix Multiplication.
  let matrixA = [[1, 2], [3, 4]]
  let matrixB = [[-3, -8, 3], [-2, 1, 4]]
  let matrixC = multiply matrixA matrixB -- Matrix A to Matrix B.h
  print matrixC

  -- Homework 4 - Infinite Fibonacci numbers.
  let fibonacciNumbers = fibonacci 100 -- Calculate the first 100 Fibonacci Numbers.
  print fibonacciNumbers
