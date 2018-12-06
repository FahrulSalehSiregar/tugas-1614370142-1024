# PENJELASAN DAN PERTANYAAN king.pl
---
# PERTANYAAN :
* siapakah anak dari ferdi ?
* siapakah anak pria dari raja_bahri ?
* siapakah anak wanita dari fahri ?
* siapakah saudara kandung dari farah ?
* siapa saja cicit pria dari raja bahri ?
---
# PENJELASAN :
# 1. query untuk mencari anak
<blockquote>anak(Y,X):-ortu(X,Y).</blockquote>
cara membacanya adalah Y adalah anak dari X dimana X adalah orangtua dari Y.

perntanyaan : siapakah anak dari ferdi ?

maka perintah di prolog adalah

<blockquote>?- anak(X,ferdi).</blockquote>

# 2.query untuk mencari anak laki laki
<blockquote>anakpria(X,Y):-ortu(Y,X),pria(X).</blockquote>
cara membacanya adalah X adalah anak pria dari Y dimana Y adalah orangtua dari X dan (x) adalah data pria.

perntanyaan : siapakah anak pria dari raja_bahri ?

maka perintahnya diprolog adalah

<blockquote>?- anakpria(X,raja_bahri).</blockquote>

# 3.query untuk mencari anak wanita
<blockquote>anakpria(X,Y):-ortu(Y,X),wanita(X).</blockquote>

cara membacanya adalah X adalah anak wanita dari Y dimana Y adalah orangtua dari X dan (x) adalah data wanita.

perntanyaan : siapakah anak wanita dari fahri ?

maka perintahnya diprolog adalah
<blockquote>?- anakwanita(X,fahri).</blockquote>

# 4.query untuk mencari saudara kandung 
<blockquote>saudarakandung(Y,Z):-anak(Y,X),anak(Z,X).</blockquote>

cara membacanya adalah Y adalah saudara kandung dari Z dimana Y adalah anak dari X dan Z anak dari X.

pertanyaan : siapakah saudara kandung dari farah ?

maka perintahnya di prolog adalah
<blockquote>?- saudarakandung(X,farah).</blockquote>

# 5.query untuk mencari cicit pria
<blockquote>cucupria(X,Z):-ortu(Z,Y),anak(X,Y),pria(X).</blockquote>

cara membacanya adalah X adalah cucu pria dari Z, dimana Z adalah orangtua dari Y dan X adalah anak dari Y, dan (x) adalah data pria
pertanyaan : siapa saja cicit pria dari raja bahri ?

maka perintahnya di prolog adalah 
<blockquote>?- cicitpria(X,raja_bahri).</blockquote>


# PERTANYAAN DAN PENJELASAN family.pl
---
# pertanyaan :

* siapakah orangtua dari basir ?
* siapakah nenek siti ?
* siapakah anak dari tuti ?
---
# penjelasan :
# 1. mencari orangtua basir
<blockquote>anak(Y,X):-orangtua(X,Y).</blockquote>

cara membacanya adalah Y adalah anak dari X dimana X adalah orang tua dari Y

maka perintah di prolog adalah
<blockquote>?- orangtua(X,basir).</blockquote>

# 2.mencari nenek siti
<blockquote>nenek(X,Y):-orangtua(Z,Y),orangtua(Z,X),wanita(X).</blockquote>

cara membacanya adalah X adalah nenek dari Y dimana Z adalah orangtua dari Y dan Z adalah orangtua dari X. dan (X) adalah menyatakan wanita

maka perintahnya diprolog adalah
<blockquote>?- nenek(X,siti).</blockquote>

# 3.menacari apakah tuti mempunya anak
<blockquote>anak(Y,X):-ortu(X,Y).</blockquote>

cara membacanya adalah cara membacanya adalah Y adalah anak dari X dimana X adalah orang tua dari Y,

karena tuti tidak mempunyai anak maka tidak ditemukan anak tuti di program prolog

maka perintahnya diprolog adalah

<blockquote>?- anak(X,tuti).</blockquote>	
