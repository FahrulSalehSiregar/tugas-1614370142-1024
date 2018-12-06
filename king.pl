pria(raja_bahri).
pria(bahrun).
pria(fahri).
pria(arpan).
pria(burhan).
pria(ferdi).
pria(fariz).
pria(farhan).

wanita(farah).
wanita(salma).
wanita(salsa).
wanita(syifa).

ortu(raja_bahri, bahrun).
ortu(raja_bahri, farah).

ortu(bahrun, fahri).
ortu(bahrun, salma).

ortu(farah, burhan).
ortu(farah, ferdi).

ortu(fahri, salsa).
ortu(fahri, arpan).

ortu(salma, farhan).

ortu(ferdi, fariz).
ortu(ferdi, syifa).


anak(Y,X):-ortu(X,Y).
anakpria(X,Y):-ortu(Y,X),pria(X).
anakwanita(X,Y):-ortu(Y,X),wanita(X).

opa(X,Z):-ortu(X,Y),ortu(Y,Z),pria(X).
oma(X,Z):-ortu(X,Y),ortu(Y,Z),wanita(X).

saudarakandung(Y,Z):-anak(Y,X),anak(Z,X).
saudarakandungpria(Y,Z):-anak(Y,X),anak(Z,X),pria(Y).
saudarakandungwanita(Y,Z):-anak(Y,X),anak(Z,X),wanita(Y).

cicit(X,Y):-anak(X,Y),cucu(Y,Z).
cicitwanita(X,Z):-anak(X,Y),cucu(Y,Z),wanita(X).
cicitpria(X,Z):-anak(X,Y),cucu(Y,Z),pria(X).

keturunan(X,Y):-anak(X,Y).
keturunan(X,Y):-anak(X,Z).,keturunan(Z,Y).

pengganti(X,Y):-anak(X,Y),laki(X).
pengganti(X,Y):-anak(X,Z),pengganti(Z,Y),laki(X).

cucu(X,Z):-ortu(Z,Y),anak(X,Y).
cucupria(X,Z):-ortu(Z,Y),anak(X,Y),pria(X).
cucuperempuan(X,Z):-ortu(Z,Y),anak(X,Y),wanita(X).