% % % % % % % % % % % % % % % % % % % % % % % % %
% Programme à écrire (main) :
%   lire une liste
%   la trier
%   afficher le résultat
% 
% le programme principal, la lecture et l'ecriture sont donnés
%
% il ne reste plus qu'à ecrire le prédicat qui trie la liste
% profil attendu :
% tri(en entrée une liste, en sortie une liste triée)
% l'algorithme de tri attendu est le tri par recherche du minimum
% utiliser la recherche du min trouvée à l'exercice précédent ou une variante
% qui extrait le min : fournir le min et la liste sans le min
% % % % % % % % % % % % % % % % % % % % % % % % % 

gt(X,Y):-
  {X>Y}.

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% debut de votre code ici %%%
tri([],[]).

tri([Pr],[Pr]).

tri([Pr[Sec|Fin]],Res):-
    min([Pr|Sec],Res1),
    
    

  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


lireListe([E|L]):-
  readln([E|_]), !,
  lireListe(L).
lireListe([]).

ecrireListe([]).
ecrireListe([E|L]):-
  writeln(E),
  ecrireListe(L).


main :- 
  writeln('Votre liste ? (un entier par ligne, un ligne blanche à la fin)'),
  lireListe(Entree),
  tri(Entree,Sortie),
  write('Liste triée : '),
  ecrireListe(Sortie).
main.

  
:- use_module(library(clpq)), main.
