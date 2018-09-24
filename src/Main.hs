{-# LANGUAGE OverloadedStrings #-}


module Main where

import Data.Text (Text)
import qualified Data.Text as T
import qualified Data.List as List
import Flow

main :: IO ()
main = 
    [ [ "module Text exposing\n\
        \    ( " 
      ]
    , List.intersperse 
        "\n    , " 
        (letters ++ (List.map T.toLower letters) ++ packageFunctions)
    , [ "\n    )\n\n\n" ]
    , [ "type Text v\n\
        \    = Text v String\n\n\n" 
      ]
    , [ "textEnd : Text ()\n\
        \textEnd =\n\
        \    Text () \"\"\n\n\n"
      ]
    , [ "makeLetter : (value -> letter) -> String -> Text value -> Text letter\n\
        \makeLetter letterCtor letterStr (Text v str) =\n\
        \    Text (letterCtor v) (letterStr ++ str)\n\n\n"
      ]
    , [ "toString : Text v -> String\n\
        \toString (Text _ str) =\n\
        \    str\n\n\n"
      ]
    , List.map letterTypeAndFunction letters
    ]
        |> List.concat
        |> List.map T.unpack
        |> List.foldr (++) ""
        |> writeFile "./src/Text.elm"
    

letterTypeAndFunction :: Text -> Text
letterTypeAndFunction letter =
    [ "type "
    , letter
    , " v\n"
    , "    = "
    , letter
    , " v\n\n\n"
    , T.toLower letter
    , " : Text v -> Text (" 
    , letter
    , " v)\n"
    , T.toLower letter
    , " =\n"
    , "    makeLetter "
    , letter
    , " \""
    , letter
    , "\"\n\n\n"
    ]
        |> List.map T.unpack
        |> List.foldr (++) ""
        |> T.pack

    
packageFunctions :: [ Text ]
packageFunctions =
    [ "Text"
    , "textEnd"
    , "toString"
    ]
        
        
letters :: [ Text ]
letters =
    [ "A"
    , "B"
    , "C"
    , "D"
    , "E"
    , "F"
    , "G"
    , "H"
    , "I"
    , "J"
    , "K"
    , "L" 
    , "M" 
    , "N" 
    , "O" 
    , "P" 
    , "Q" 
    , "R" 
    , "S" 
    , "T" 
    , "U" 
    , "V" 
    , "W" 
    , "X" 
    , "Y" 
    , "Z" 
    ]


