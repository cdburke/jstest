prolog './g000i.ijs'
NB. =/ B ---------------------------------------------------------------

0 = {{x=y}}/ 0 1  NB. smoke test, 32-bit arm crash on unaligned access of 8-byte double

1 0 0 1 -: =/ 0 0 1 1 ,: 0 1 0 1

eq=: 4 : 'x=y'

(=/"1 -: eq/"1) x=:?3 5 17$2
(=/"2 -: eq/"2) x
(=/"3 -: eq/"3) x

(=/"1 -: eq/"1) x=:?3 5 32$2
(=/"2 -: eq/"2) x
(=/"3 -: eq/"3) x

(=/"1 -: eq/"1) x=:?3 8 32$2
(=/"2 -: eq/"2) x
(=/"3 -: eq/"3) x

f=: 3 : '(=/ -: eq/) ?y$2'
,f"1 x=:7 8 9,."0 1 [ _1 0 1+  255
,f"1 |."1 x
,f"1 x=:7 8 9,."0 1 [ _1 0 1+4*255
,f"1 |."1 x

(eq/"1 -: =/"1) #: i.2^6
(eq/"1 -: =/"1) #: i.2^7
(eq/"1 -: =/"1) #: i.2^8
(eq/"1 -: =/"1) #: i.2^9

(eq/   -: =/  ) |: #: i.2^6
(eq/   -: =/  ) |: #: i.2^7
(eq/   -: =/  ) |: #: i.2^8
(eq/   -: =/  ) |: #: i.2^9

(eq/"1 -: =/"1) 1    ,"1 #: i.2^6
(eq/"1 -: =/"1) 1 1  ,"1 #: i.2^6
(eq/"1 -: =/"1) 1 1 1,"1 #: i.2^6

(eq/   -: =/  ) |: 1    ,"1 #: i.2^6
(eq/   -: =/  ) |: 1 1  ,"1 #: i.2^6
(eq/   -: =/  ) |: 1 1 1,"1 #: i.2^6


4!:55 ;:'f eq x'



epilog''
