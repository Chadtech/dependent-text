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


type A v
    = A v


a : Text v -> Text (A v)
a =
    makeLetter A "A"


type B v
    = B v


b : Text v -> Text (B v)
b =
    makeLetter B "B"


type C v
    = C v


c : Text v -> Text (C v)
c =
    makeLetter C "C"


type D v
    = D v


d : Text v -> Text (D v)
d =
    makeLetter D "D"


type E v
    = E v


e : Text v -> Text (E v)
e =
    makeLetter E "E"


type F v
    = F v


f : Text v -> Text (F v)
f =
    makeLetter F "F"


type G v
    = G v


g : Text v -> Text (G v)
g =
    makeLetter G "G"


type H v
    = H v


h : Text v -> Text (H v)
h =
    makeLetter H "H"


type I v
    = I v


i : Text v -> Text (I v)
i =
    makeLetter I "I"


type J v
    = J v


j : Text v -> Text (J v)
j =
    makeLetter J "J"


type K v
    = K v


k : Text v -> Text (K v)
k =
    makeLetter K "K"


type L v
    = L v


l : Text v -> Text (L v)
l =
    makeLetter L "L"


type M v
    = M v


m : Text v -> Text (M v)
m =
    makeLetter M "M"


type N v
    = N v


n : Text v -> Text (N v)
n =
    makeLetter N "N"


type O v
    = O v


o : Text v -> Text (O v)
o =
    makeLetter O "O"


type P v
    = P v


p : Text v -> Text (P v)
p =
    makeLetter P "P"


type Q v
    = Q v


q : Text v -> Text (Q v)
q =
    makeLetter Q "Q"


type R v
    = R v


r : Text v -> Text (R v)
r =
    makeLetter R "R"


type S v
    = S v


s : Text v -> Text (S v)
s =
    makeLetter S "S"


type T v
    = T v


t : Text v -> Text (T v)
t =
    makeLetter T "T"


type U v
    = U v


u : Text v -> Text (U v)
u =
    makeLetter U "U"


type V v
    = V v


v : Text v -> Text (V v)
v =
    makeLetter V "V"


type W v
    = W v


w : Text v -> Text (W v)
w =
    makeLetter W "W"


type X v
    = X v


x : Text v -> Text (X v)
x =
    makeLetter X "X"


type Y v
    = Y v


y : Text v -> Text (Y v)
y =
    makeLetter Y "Y"


type Z v
    = Z v


z : Text v -> Text (Z v)
z =
    makeLetter Z "Z"


