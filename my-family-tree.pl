male(krish).
male(ravi).
male(ragu).
male(jerry).
male(stuart).
male(warren).
male(peter).


female(laxmi).
female(uma).
female(sasi).
female(vishnu).
female(kather).
female(maryalice).
female(ann).

brother(ravi,sasi).
brother(ravi,ragu).
brother(ragu,sasi).
brother(ragu,ravi).
brother(jerry,stuart).
brother(jerry,kather).
brother(peter, warren).

sister(sasi,ravi).
sister(sasi,ragu).
sister(ann, mayalice).
sister(kather,jerry).

parent_of(uma,laxmi).
parent_of(laxmi,krish).
parent_of(ravi,krish).
parent_of(sasi,vishnu).
parent_of(warren,jerry).
parent_of(maryalice,jerry).

married(ravi,laxmi).



father(X,Y):- male(X),parent_of(X,Y).
mother(X,Y):- female(X),parent_of(X,Y).
son(X,Y) :- male(X),parent_of(Y,X).
daughter(X,Y) :- female(X),parent_of(Y,X).
child(X,Y) :- parent_of(Y,X).
grandfather(X,Y) :- male(X), parent_of(X,Z),parent_of(Z,Y).
sibling(X,Y) :- parent_of(Z,X),parent_of(Z,Y),not(X=Y).
sibling(X,Y) :- sister(X,Y).
sibling(X,Y) :- brother(X,Y).
aunt(X,Y) :- parent_of(Z,Y),sister(X,Z),female(X).
uncle(X,Y) :- male(X),brother(X,Z),parent_of(Z,Y).
cousin(X,Y) :- sibling(A,B),parent_of(A,X),parent_of(B,Y).
cousin(X,Y) :- brother(A,B),parent_of(A,X),parent_of(B,Y).
spouse(X,Y) :- married(X,Y).




