{-# LANGUAGE ForeignFunctionInterface #-}

module Fibs where

import Foreign.C
    
foreign export ccall getFib :: CInt -> IO CInt    
    
fibs :: [Int]
fibs = 1:1:zipWith (+) fibs (tail fibs)

getFib :: CInt -> IO CInt
getFib n = (return.fromIntegral) (fibs !! (fromIntegral n))
