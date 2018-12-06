pria(husain).
pria(abdul).
pria(rudi).
pria(amir).
pria(basir).

wanita(rita).
wanita(tuti).
wanita(siti).

orangtua(rita, abdul).
orangtua(rita, rudi).

orangtua(husain, rudi).

orangtua(rudi, tuti).
orangtua(rudi, siti).

orangtua(siti,amir).
orangtua(siti, basir). 

anak(Y,X):-orangtua(X,Y).
anakpria(X,Y):-orangtua(Y,X),pria(X).
anakwanita(X,Y):-orangtua(Y,X),wanita(X).

nenek(X,Y):-orangtua(Z,Y),orangtua(Z,X),wanita(X).


