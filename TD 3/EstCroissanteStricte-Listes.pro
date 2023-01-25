% % % % % % % % % % % % % % % % % % % % % % % % %
% Programme à écrire (main) :
%   lire une liste
%   determiner si elle est triée, croissante, stricte
%   afficher ce résultat
% 
% le programme principal, la lecture et 
% l'ecriture sont donnés
%
% il ne reste plus qu'à ecrire le prédicat qui détermine si la liste est triée (croissante stricte)
% profil attendu :
% estCroissanteStricte(en entrée une liste)
% pour tester >, vous pourrez utiliser le prédicat gt(X,Y) qui teste si X>Y
% % % % % % % % % % % % % % % % % % % % % % % % % 

gt(X,Y):-
  {X>Y}.

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% debut de votre code ici %%%
estCroissanteStricte([Pr|[Sec|Fin]]):-
    gt(Sec,Pr),
    estCroissanteStricte([Sec|Fin]).

estCroissanteStricte([Pr,Pr|Fin]):-
    estCroissanteStricte(Fin).
    
estCroissanteStricte([_Fin|[]]).

estCroissanteStricte([]).
  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


lireListe([E|L]):-
  readln([E|_]), !,
  lireListe(L).
lireListe([]).


suiteMain(L):-
  estCroissanteStricte(L), !,
  writeln('Resultat : la liste est croissante stricte').
suiteMain(_L):-
  writeln('Resultat : la liste n\'est pas croissante stricte').

main :- 
  writeln('Votre liste ? (un entier par ligne, une ligne blanche à la fin)'),
  lireListe(Entree),
  suiteMain(Entree). 


:- use_module(library(clpq)), main.