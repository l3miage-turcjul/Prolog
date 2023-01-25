% % % % % % % % % % % % % % % % % % % % % % % % %
% Programme à écrire (main) :
%   lire une liste
%   la parcourir pour trouver le minimum
%   afficher ce minimum
% 
% le programme principal, la lecture et 
% l'ecriture sont donnés
%
% il ne reste plus qu'à ecrire le prédicat qui parcoure et trouve le minimum d'une liste
% profil attendu :
% min(en entrée une liste, en sortie un entier)
% pour tester >, vous pourrez utiliser le prédicat gt(X,Y) qui teste si X>Y
% % % % % % % % % % % % % % % % % % % % % % % % % 

gt(X,Y):-
  {X>Y}.

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% debut de votre code ici %%%
min([],0).

min([Pr],Pr).

min([Pr|[Sec|Fin]],Retour):-
    gt(Sec,Pr),
    min([Pr|Fin],Retour).
    
min([Pr|[Sec|Fin]],Retour):-
    gt(Pr,Sec),
    min([Sec|Fin],Retour).

min([Pr|[Pr|Fin]],Retour):-
    min([Pr|Fin],Retour).


  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


lireListe([E|L]):-
  readln([E|_]), !,
  lireListe(L).
lireListe([]).


main :- 
  writeln('Votre liste ? (un entier par ligne, une ligne blanche à la fin)'),
  lireListe(Entree),
  min(Entree,Sortie),
  write('Minimum : '),
  writeln(Sortie).
main.
  

  
:- use_module(library(clpq)), main.
