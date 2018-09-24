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

    , [ "{-|\n@docs Text, textEnd, toString, " ]
    , letters ++ (List.map T.toLower letters)
          |> List.intersperse ", "
    , [ "\n-}\n\n\n{-| Text, with human readable letter content `v`.\n\
        \    hello : Text (H (E (L (L (O ())))))\n\
        \    hello =\n\
        \        h (e (l (l (o textEnd))))\n\
        \-}\n"
      , "type Text v\n\
        \    = Text v String\n\n\n" 
      ]
    , [ "{-| The end of a `Text`-}\n"
      , "textEnd : Text ()\n\
        \textEnd =\n\
        \    Text () \"\"\n\n\n"
      ]
    , [ "makeLetter : (value -> letter) -> String -> Text value -> Text letter\n\
        \makeLetter letterCtor letterStr (Text value str) =\n\
        \    Text (letterCtor value) (letterStr ++ str)\n\n\n"
      ]
    , [ "{-| Turn a `Text` into a `String`\n\
        \    Text.toString (h (e (l (l (o textEnd))))) == \"HELLO\"\n\
        \-}\n"
      , "toString : Text v -> String\n\
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
    [ "{-| The letter \""
    , letter
    , "\" -}\n"
    , "type "
    , letter
    , " v\n"
    , "    = "
    , letter
    , " v\n\n\n"
    , "{-| The letter \""
    , letter
    , "\" -}\n"
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


