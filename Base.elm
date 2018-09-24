module Text exposing (main)


type Text v
    = Text v String


textEnd : Text ()
textEnd =
    Text () ""


makeLetter : (value -> letter) -> String -> Text value -> Text letter
makeLetter letterCtor letterStr (Text v str) =
    Text (letterCtor v) (letterStr ++ str)


toString : Text v -> String
toString (Text _ str) =
    str


a : Text v -> Text (A v)
a =
    makeLetter A "A"


type A a
    = A a


chadtech : Text (C (H (A (D (T (E (C (H ()))))))))
chadtech =
    c (h (a (d (t (e (c (h textEnd)))))))
