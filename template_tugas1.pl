% Discontiguous predicates
:- discontiguous ayah/2.
:- discontiguous ibu/2.

% Data-data
% input data disini

% Mencari anak
anak(X, Y) :- ayah(Y, X) ; ibu(Y, X).

% Mencari saudara dari ayah
saudara_ayah(X, A) :- ayah(Z, A), ayah(W, X), ayah(W, Z), X \= Z.

% Mencari saudara dari ibu
saudara_ibu(X, A) :- ibu(Z, A), ayah(W, X), ayah(W, Z), X \= Z.

% Mencari sepupu dari ayah
sepupu_ayah(B, A) :- ayah(Z, A), ayah(W, X), ayah(W, Z), (ayah(X, B) ; ibu(X, B)), X \= Z.

% Mencari sepupu dari ibu
sepupu_ibu(B, A) :- ibu(Z, A), ayah(W, X), ayah(W, Z), (ayah(X, B) ; ibu(X, B)), X \= Z.

% Mencari saudara
saudara(X, Y) :- ayah(Z, X), ayah(Z, Y), X \= Y.

% Mencari kakek
kakek_ayah(X, Z) :- ayah(X, Y), ayah(Y, Z).

% Mencari kakek
kakek_ibu(X, Z) :- ayah(X, Y), ibu(Y, Z).