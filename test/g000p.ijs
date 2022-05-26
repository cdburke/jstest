prolog './g000p.ijs'
NB. =/\ B ---------------------------------------------------------------

(0 0 1 1,:1 0 0 1) -: =/\ 0 0 1 1 ,: 0 1 0 1
(20$1)   -: =/\20$1
(20$0 1) -: =/\20$0

eq=: 4 : 'x=y'
eqscan=: 2&|@(+/\)&.(-."_)

(=/\   -: eq/\  ) x=:?    13$2
(=/\   -: eq/\  ) x=:?4   13$2
(=/\"1 -: eq/\"1) x
(=/\   -: eq/\  ) x=:?3 5 13$2
(=/\"1 -: eq/\"1) x
(=/\"2 -: eq/\"2) x

(=/\   -: eqscan  ) x=:?    32$2
(=/\   -: eqscan  ) x=:?4   32$2
(=/\"1 -: eqscan"1) x
(=/\   -: eqscan  ) x=:?4 8 32$2
(=/\"1 -: eqscan"1) x
(=/\"2 -: eqscan"2) x

(=/\   -: eqscan  ) x=:?    23$2
(=/\   -: eqscan  ) x=:?5   23$2
(=/\"1 -: eqscan"1) x
(=/\   -: eqscan  ) x=:?5 7 23$2
(=/\"1 -: eqscan"1) x
(=/\"2 -: eqscan"2) x

f=: 3 : '(=/\ -: eqscan) ?y$2'
,f"1 x=:7 8 9,."0 1 [ _1 0 1+  255
,f"1 |."1 x
,f"1 x=:7 8 9,."0 1 [ _1 0 1+4*255
,f"1 |."1 x


NB. =/\ I ---------------------------------------------------------------

eq=: 4 : 'x=y'

(=/\ -: eq/\) x=:1 2 3 1e9 2e9
(=/\ -: eq/\) |.x

(=/\   -: eq/\  ) x=:_1e4+?    13$2e4
(=/\   -: eq/\  ) x=:_1e4+?4   13$2e4
(=/\"1 -: eq/\"1) x
(=/\   -: eq/\  ) x=:_1e4+?3 5 13$2e4
(=/\"1 -: eq/\"1) x
(=/\"2 -: eq/\"2) x

(=/\   -: eq/\  ) x=:_1e9+?    13$2e9
(=/\   -: eq/\  ) x=:_1e9+?4   13$2e9
(=/\"1 -: eq/\"1) x
(=/\   -: eq/\  ) x=:_1e9+?3 5 13$2e9
(=/\"1 -: eq/\"1) x
(=/\"2 -: eq/\"2) x


NB. =/\ D ---------------------------------------------------------------

eq=: 4 : 'x=y'

(=/\   -: eq/\  ) x=:0.01*_1e4+?    13$2e4
(=/\   -: eq/\  ) x=:0.01*_1e4+?4   13$2e4
(=/\"1 -: eq/\"1) x
(=/\   -: eq/\  ) x=:0.01*_1e4+?3 5 13$2e4
(=/\"1 -: eq/\"1) x
(=/\"2 -: eq/\"2) x


NB. =/\ Z ---------------------------------------------------------------

eq=: 4 : 'x=y'

(=/\   -: eq/\  ) x=:[&.j. 0.1*_1e2+?2     13$2e2
(=/\   -: eq/\  ) x=:[&.j. 0.1*_1e2+?2 4   13$2e2
(=/\"1 -: eq/\"1) x
(=/\   -: eq/\  ) x=:[&.j. 0.1*_1e2+?2 3 5 13$2e2
(=/\"1 -: eq/\"1) x
(=/\"2 -: eq/\"2) x

(,'j')    -: =/\'j'
(,<'ace') -: =/\<'ace'
(,'j')    -: =/\u:'j'
(,<'ace') -: =/\<u:'ace'
(,10&u:'j')    -: =/\10&u:'j'
(,<10&u:'ace') -: =/\<10&u:'ace'
(, s:@<"0 'j')    -: =/\ s:@<"0 'j'
(, s:@<"0&.> <'ace') -: =/\ s:@<"0&.> <'ace'
(, <"0@s: <'ace') -: =/\ <"0@s: <'ace'

'domain error' -: =/\ etx 'deipnosophist'
'domain error' -: =/\ etx ;:'peace in our time'
'domain error' -: =/\ etx u:'deipnosophist'
'domain error' -: =/\ etx u:&.> ;:'peace in our time'
'domain error' -: =/\ etx 10&u:'deipnosophist'
'domain error' -: =/\ etx 10&u:&.> ;:'peace in our time'
'domain error' -: =/\ etx s:@<"0 'deipnosophist'
'domain error' -: =/\ etx s:@<"0&.> ;:'peace in our time'
'domain error' -: =/\ etx <"0@s: ;:'peace in our time'

4!:55 ;:'eq eqscan f x'



epilog''
