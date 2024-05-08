module Data.Alphabet.Alphabet (
  Alphabet,
  lower,
  upper,
) where

type Alphabet = String

lower :: Alphabet
lower = ['a' .. 'z']

upper :: Alphabet
upper = ['A' .. 'Z']
