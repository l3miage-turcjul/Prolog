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
% l'algorithme de tri attendu est le tri par insertion
% utiliser l'insertion trouvée à l'exercice précédent
% % % % % % % % % % % % % % % % % % % % % % % % % 

gt(X,Y):-
  {X>Y}.

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% debut de votre code ici %%%

tri([],[]). %Dans le cas d'une liste vide, on revoie aussi une liste vide.

tri([Pr],[Pr]). %Dans le cas d'une liste ne contenant qu'un seul élément, on ne renvoie que cet élément

tri([Pr|Fin],Lstriee):-
    gestlst([Pr|Fin],[],Lstriee). %On doit gérer l'ajout des données dans une nouvelle liste pour éviter la boucle infinie

gestlst([],LsTriee,LsTriee). %Quand la liste de départ est vide, on renvoie le résultat de la liste triée

gestlst([Pr|Fin],Lst,Res):- %On traite chaque nombre.
    insertion(Lst,Pr,Lst2),
    gestlst(Fin,Lst2,Res).
    

    
    
insertion([],Nombre,[Nombre]).

insertion([Pr],Nombre,[Pr,Nombre]):-
    gt(Nombre,Pr).

insertion([Pr|Fin],Nombre,[Nombre,Pr|Fin]):-
    gt(Pr,Nombre).

insertion([Pr|[Sec|Fin]],Nombre,[Pr,Nombre|[Sec|Fin]]):-
    gt(Nombre,Pr),
    gt(Sec,Nombre).

insertion([Pr|[Sec|Fin]],Nombre,[Pr|Res]):-
    gt(Nombre,Pr),
    gt(Nombre,Sec),
    insertion([Sec|Fin],Nombre,Res).

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

:- use_module(library(clpq)), main, halt.