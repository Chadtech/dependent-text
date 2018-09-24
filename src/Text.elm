module Text exposing
    ( A
    , B
    , C
    , D
    , E
    , F
    , G
    , H
    , I
    , J
    , K
    , L
    , M
    , N
    , O
    , P
    , Q
    , R
    , S
    , T
    , U
    , V
    , W
    , X
    , Y
    , Z
    , a
    , b
    , c
    , d
    , e
    , f
    , g
    , h
    , i
    , j
    , k
    , l
    , m
    , n
    , o
    , p
    , q
    , r
    , s
    , t
    , u
    , v
    , w
    , x
    , y
    , z
    , Text
    , textEnd
    , toString
    )


{-| Text, with human readable letter content `v`.
   hello : Text (H (E (L (L (O ())))))
   hello =
       h (e (l (l (o textEnd))))
-}
type Text v
    = Text v String


{-| The end of a `Text`-}
textEnd : Text ()
textEnd =
    Text () ""


makeLetter : (value -> letter) -> String -> Text value -> Text letter
makeLetter letterCtor letterStr (Text v str) =
    Text (letterCtor v) (letterStr ++ str)


{-| Turn a `Text` into a `String`
   Text.toString (h (e (l (l (o textEnd))))) == "HELLO"
-}
toString : Text v -> String
toString (Text _ str) =
    str


{-| The letter "A" -}
type A v
    = A v


{-| The letter "A" -}
a : Text v -> Text (A v)
a =
    makeLetter A "A"


{-| The letter "B" -}
type B v
    = B v


{-| The letter "B" -}
b : Text v -> Text (B v)
b =
    makeLetter B "B"


{-| The letter "C" -}
type C v
    = C v


{-| The letter "C" -}
c : Text v -> Text (C v)
c =
    makeLetter C "C"


{-| The letter "D" -}
type D v
    = D v


{-| The letter "D" -}
d : Text v -> Text (D v)
d =
    makeLetter D "D"


{-| The letter "E" -}
type E v
    = E v


{-| The letter "E" -}
e : Text v -> Text (E v)
e =
    makeLetter E "E"


{-| The letter "F" -}
type F v
    = F v


{-| The letter "F" -}
f : Text v -> Text (F v)
f =
    makeLetter F "F"


{-| The letter "G" -}
type G v
    = G v


{-| The letter "G" -}
g : Text v -> Text (G v)
g =
    makeLetter G "G"


{-| The letter "H" -}
type H v
    = H v


{-| The letter "H" -}
h : Text v -> Text (H v)
h =
    makeLetter H "H"


{-| The letter "I" -}
type I v
    = I v


{-| The letter "I" -}
i : Text v -> Text (I v)
i =
    makeLetter I "I"


{-| The letter "J" -}
type J v
    = J v


{-| The letter "J" -}
j : Text v -> Text (J v)
j =
    makeLetter J "J"


{-| The letter "K" -}
type K v
    = K v


{-| The letter "K" -}
k : Text v -> Text (K v)
k =
    makeLetter K "K"


{-| The letter "L" -}
type L v
    = L v


{-| The letter "L" -}
l : Text v -> Text (L v)
l =
    makeLetter L "L"


{-| The letter "M" -}
type M v
    = M v


{-| The letter "M" -}
m : Text v -> Text (M v)
m =
    makeLetter M "M"


{-| The letter "N" -}
type N v
    = N v


{-| The letter "N" -}
n : Text v -> Text (N v)
n =
    makeLetter N "N"


{-| The letter "O" -}
type O v
    = O v


{-| The letter "O" -}
o : Text v -> Text (O v)
o =
    makeLetter O "O"


{-| The letter "P" -}
type P v
    = P v


{-| The letter "P" -}
p : Text v -> Text (P v)
p =
    makeLetter P "P"


{-| The letter "Q" -}
type Q v
    = Q v


{-| The letter "Q" -}
q : Text v -> Text (Q v)
q =
    makeLetter Q "Q"


{-| The letter "R" -}
type R v
    = R v


{-| The letter "R" -}
r : Text v -> Text (R v)
r =
    makeLetter R "R"


{-| The letter "S" -}
type S v
    = S v


{-| The letter "S" -}
s : Text v -> Text (S v)
s =
    makeLetter S "S"


{-| The letter "T" -}
type T v
    = T v


{-| The letter "T" -}
t : Text v -> Text (T v)
t =
    makeLetter T "T"


{-| The letter "U" -}
type U v
    = U v


{-| The letter "U" -}
u : Text v -> Text (U v)
u =
    makeLetter U "U"


{-| The letter "V" -}
type V v
    = V v


{-| The letter "V" -}
v : Text v -> Text (V v)
v =
    makeLetter V "V"


{-| The letter "W" -}
type W v
    = W v


{-| The letter "W" -}
w : Text v -> Text (W v)
w =
    makeLetter W "W"


{-| The letter "X" -}
type X v
    = X v


{-| The letter "X" -}
x : Text v -> Text (X v)
x =
    makeLetter X "X"


{-| The letter "Y" -}
type Y v
    = Y v


{-| The letter "Y" -}
y : Text v -> Text (Y v)
y =
    makeLetter Y "Y"


{-| The letter "Z" -}
type Z v
    = Z v


{-| The letter "Z" -}
z : Text v -> Text (Z v)
z =
    makeLetter Z "Z"


