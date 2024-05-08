module Main where

import Caesar (caesar)

main :: IO ()
main = do
  let original = "Hello, my name is Sig!"
  let encrypted = caesar 13 original
  let decrypted = caesar 13 encrypted
  putStrLn $ "Original: " ++ original
  putStrLn $ "Encrypted: " ++ encrypted
  putStrLn $ "Decrypted: " ++ decrypted
