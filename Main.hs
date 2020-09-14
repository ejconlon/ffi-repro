{-# LANGUAGE ForeignFunctionInterface #-}

module Main where

foreign import ccall "life.h meaning_of_life"
  meaning_of_life :: IO CInt

main :: IO ()
main = do
    secret <- meaning_of_life
    putStrLn ("Wow, this is it: " ++ show secret)
