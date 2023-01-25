% % % % % % % % % % % % % % % % % % % % % % % % %
% Programme à écrire (main) :
%   lire une liste
%   en extraire une sous liste dont la somme vaut 100
%   afficher le résultat
% 
% le programme principal, la lecture et l'ecriture sont donnés
%
% il ne reste plus qu'à ecrire le prédicat qui effectue l'extraction de la sous liste solution
% profil attendu :
% somme(en entrée une liste, en entrée la somme recherchée, en sortie une liste d'entiers {sous-liste de la première liste})
% % % % % % % % % % % % % % % % % % % % % % % % % 

plus(S,X,Y):-
  {S=X+Y}.

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% debut de votre code ici %%%

somme([],NbRecher,[]).

somme([Pr|Fin],NbRecher,[Pr]):-
    plus(Pr,0,NbRecher).
    
somme([Pr|Fin],NbRecher,Res):-
    somme([Fin],NbRecher,Res).
    
somme([Pr,Sec|Fin],NbRecher,[Pr,Sec]):-
    plus(Pr,Sec,NbRecher).

somme([Pr,Sec|Fin],NbRecher,Res):-
    somme([Pr|Fin],NbRecher,Res).
    
somme([Pr,Sec|Fin],NbRecher,Res):-
    somme([Sec|Fin],NbRecher,Res).





  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


lireListe([E|L]):-
  readln([E|_]),
  lireListe(L).
lireListe([]).

ecrireListe([]).
ecrireListe([E|L]):-
  writeln(E),
  ecrireListe(L).


main :- 
  writeln('Votre liste ? (un entier par ligne, un ligne blanche à la fin)'),
  lireListe(Entree),
  somme(Entree,100,Sortie),
  write('Résultat : '),
  writeln(Sortie).
main.

:- use_module(library(clpq)), main.
