% % % % % % % % % % % % % % % % % % % % % % % % %
% Programme à écrire (main) :
%   lire une liste (dans l'ordre croissant)
%   lire un entier
%   insérer l'entier dans la liste ("à sa place", ordre croissant)
%   afficher la liste résultat
% 
% le programme principal, les lectures et 
% l'ecriture sont donnés
%
% il ne reste plus qu'à ecrire le prédicat qui fait l'insertion de l'entier
% profil attendu :
% insertion(en entrée une liste, en entrée un entier, en sortie une liste)
% pour tester >, vous pourrez utiliser le prédicat gt(X,Y) qui teste si X>Y
% % % % % % % % % % % % % % % % % % % % % % % % % 

gt(X,Y):-
  {X>Y}.

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% debut de votre code ici %%%
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
  writeln('Votre liste ? (un entier par ligne, une ligne blanche à la fin)'),
  lireListe(Entree),
  writeln('Votre entier à insérer ?'),
  readln([N|_]),
  insertion(Entree,N,Sortie),
  write('Liste résultat : '),
  ecrireListe(Sortie).
:- use_module(library(clpq)), main, halt.