prolog './g101i.ijs'
NB. +./ B ---------------------------------------------------------------

0 1 1 1 -: +./ 0 0 1 1 ,: 0 1 0 1
1 1 1 -: +./ #:i.8
0 1 1 1 1 1 1 1 -: +./"1 #:i.8

or=: 4 : 'x+.y'

(+./"1 -: or/"1) x=:1=?3 5 17$13
(+./"2 -: or/"2) x
(+./"3 -: or/"3) x

(+./"1 -: or/"1) x=:1=?3 5 32$13
(+./"2 -: or/"2) x
(+./"3 -: or/"3) x

(+./"1 -: or/"1) x=:1=?3 8 32$13
(+./"2 -: or/"2) x
(+./"3 -: or/"3) x

f=: 3 : '(+./ -: or/) y ?@$ 2'
,f"1 x=:7 8 9,."0 1 [ _1 0 1+  255
,f"1 |."1 x
,f"1 x=:7 8 9,."0 1 [ _1 0 1+4*255
,f"1 |."1 x

4!:55 ;:'f or x'



epilog''
