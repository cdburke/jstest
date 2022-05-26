prolog './gsp400.ijs'
NB. boolean # -----------------------------------------------------------

d=: (?13 13 13$2) * ?13 13 13 13$100
c=: ; (i.1+r) <"1@comb&.>r=:#$d

f=: 4 : '(scheck t) *. (b #"(1,x) d) -: t=: b #"(1,x) s=: (2;y)$.d'
(i.1+r) f&>/ c [ b=:       ?13$2
(i.1+r) f&>/ c [ b=:    $. ?13$2
(i.1+r) f&>/ c [ b=: -. $. ?13$2

f=: 3 : '(b #"(1,y) d) -: ($.^:_1 b) #"(1,y) d'
f"0 i.1+r [ b=:   $.?13$2
f"0 i.1+r [ b=: -.$.?13$2

f=: 4 : '(b #"(1,x) (2;y)$.d) -: ($.^:_1 b) #"(1,x) d'
(i.1+r) f&>/ c [ b=: $.?13$2
(i.1+r) f&>/ c [ b=: (3;1)$.1=$.?13$5

i=: /:~ 1e3 ? 1e9
b=: 1 i}1 $. 1e9 ; 0 ; 0
j=: /:~ ~.(?2e3$2e3){i,?1000$1e9
d=: ?((#j),3)$1000
s=: d j}1 $. 1e9 3 ; 0 ; 2-2
t=: b#s
scheck t
t -: (i e. j)&#^:_1 (j e. i)#d

i=: /:~ 1e3 ? 1e9
b=: 0 i}1 $. 1e9 ; 0 ; 1
j=: /:~ ~.(?2e3$2e3){i,?1000$1e9
d=: ?((#j),3)$1000
s=: d j}1 $. 1e9 3 ; 0 ; 2-2
t=: b#s
scheck t
($t) -: (+/b),3
(5$.t) -: (-. j e. i)#d

'length error' -: ($. 0 1 0)   #   etx $. i.4 3
'length error' -: ($. 1 0 1)   #"1 etx $. i.3 4


NB. integer # -----------------------------------------------------------

d=: (?9 9 9$2) * ?9 9 9 9$100
c=: ; (i.1+r) <"1@comb&.>r=:#$d

f=: 4 : '(scheck t) *. (a #"(1,x) d) -: t=: a #"(1,x) s=: (2;y)$.d'
(i.1+r) f&>/ c [ a=:    ?9$5
(i.1+r) f&>/ c [ a=: $. ?9$5
(i.1+r) f&>/ c [ a=: $. ]&.o. ?9$5

i=: /:~ 1e3 ? 1e9
x=: ?1e3$5
a=: x i}1 $. 1e9 ; 0 ; 2-2
j=: /:~ ~.(?2e3$2e3){i,?1000$1e9
d=: ?((#j),3)$1000
s=: d j}1 $. 1e9 3 ; 0 ; 0
t=: a#s
scheck t
($t) -: (+/a),{:$s
(5$.t) -: ((i i. j){x,0)#d

'domain error' -: ($. 2 3 _1 ) #   etx $. 3 4 5

'limit error'  -: ($. >IF64{1e9 2e9;4e18 6e18) # etx $. 3 4

'length error' -: ($. 1 2 3)   #   etx $. i.4 3
'length error' -: ($. 1 2 3)   #"1 etx $. i.3 4


NB. complex # -----------------------------------------------------------

d=: (?7 7 7$2) * ?7 7 7 7$100
c=: ; (i.1+r) <"1@comb&.>r=:#$d

f=: 4 : '(scheck t) *. (a #"(1,x) d) -: t=: a #"(1,x) s=: (2;y)$.d'
(i.1+r) f&>/ c [ a=:    (0<?7$3) * j./?2 7$5
(i.1+r) f&>/ c [ a=: $. (0<?7$3) * j./?2 7$5

i=: /:~ 1e3 ? 1e9
x=: j./?2 1e3$5
a=: x i}1 $. 1e9 ; 0 ; 2-2
j=: /:~ ~.(?2e3$2e3){i,?1000$1e9
d=: ?((#j),3)$1000
s=: d j}1 $. 1e9 3 ; 0 ; 0
t=: a#s
scheck t
($t) -: (+/@,+.a),{:$s
(5$.t) -: 0 0 0 -.~ ((i i. j){x,0)#d

'domain error' -: ($. 2 3 _1j4) #   etx $. 3 4 5
'domain error' -: ($. 2 3j_2 4) #   etx $. 3 4 5

'limit error'  -: ($. >IF64{1e9 0j2e9; 4e18 0j6e18) # etx $. 3 4

'length error' -: ($. 1 2 3j2)  #   etx $. i.4 3
'length error' -: ($. 1 2 3j2)  #"1 etx $. i.3 4


NB. # with scalars ------------------------------------------------------

d=: (?5 7 11$2) * ?5 7 11 13$100
c=: ; (i.1+r) <"1@comb&.>r=:#$d

f=: 4 : '(scheck t) *. (a #"(1,x) d) -: t=: a#"(1,x) s=: (2;y)$.d'
(i.1+r) f&>/ c [ a=: 0
(i.1+r) f&>/ c [ a=: 1

(i.1+r) f&>/ c [ a=: 3
(i.1+r) f&>/ c [ a=: 2-2
(i.1+r) f&>/ c [ a=: 1.5-0.5
(i.1+r) f&>/ c [ a=: o.0

(i.1+r) f&>/ c [ a=: 0j3
(i.1+r) f&>/ c [ a=: 3j2

(d#5) -: a#5 [ a=: $. d=: (0<?13$3) *    ?  13$2
(d#5) -: a#5 [ a=: $. d=: (0<?13$3) *    ?  13$5
(d#5) -: a#5 [ a=: $. d=: (0<?13$3) * j./?2 13$5

i=: /:~ 1e3 ? 5e8
x=: ?1e3$100
s=: x i}1 $. 5e8 ; 0 ; 2-2
t=: 3 # s
scheck t
t -: (3#x) (,(3*i)+/i.3)} 1 $. 15e8 ; 0 ; 2-2

'limit error' -: 5 # etx 1 $. (IF64{1e9 3e18);0;0

4!:55 ;:'a b c d f g h i j r s t x'



epilog''

