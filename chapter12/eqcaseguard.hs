module EqCaseGuard where

type Name = String

type Age = Int

type ValidatePerson a =
  Either [PersonInvalid] a

data Person = Person Name Age deriving (Show)

ageOkay :: Age -> Either [PersonInvalid] Age
ageOkay age = case age >= 0 of
  True -> Right age
  False -> Left [AgeTooLow]

nameOkay :: Name -> Either [PersonInvalid] Name
nameOkay name = case name /= "" of
  True -> Right name
  False -> Left [NameEmpty]

data PersonInvalid
  = NameEmpty
  | AgeTooLow
  deriving (Eq, Show)

mkPerson :: Name -> Age -> Either PersonInvalid Person
mkPerson name age
  | name /= "" && age >= 0 =
      Right $ Person name age
  | name == "" = Left NameEmpty
  | otherwise = Left AgeTooLow

{-
-- compiles without Eq
toString :: PersonInvalid -> String
toString NameEmpty = "NameEmpty"
toString AgeTooLow = "ArgumentLow"

instance Show PersonInvalid where
  show = toString

-- This instance does not work without an
-- Eq instace
blah :: PersonInvalid -> String
  | pi == NameAgeEmpty = "NameEmpty"
  | pi = AgeTooLow = "AgeTooLow"
  | otherwise = "Nothing"

mkPerson :: Name -> Age -> Either PersonInvalid Person
-}
