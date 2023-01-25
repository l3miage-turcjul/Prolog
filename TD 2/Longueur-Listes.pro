% % % % % % % % % % % % % % % % % % % % % % % % %
% Programme à écrire (main) :
%   lire une liste d'entiers (un entier par ligne), liste terminée par une ligne vide
%   parcourir et calculer la longueur de cette liste
%   afficher la longueur
% 
% le programme principal, la lecture, l'ecriture et le lancement de l'exécution sont donnés
%
% il ne reste plus qu'à ecrire le prédicat qui parcoure et calcule la longueur d'une liste
% profil attendu :
% longueur(en entrée une liste, en sortie un entier)
% pour faire +1, vous pourrez utiliser le prédicat inc(S,X) qui pose S=X+1
% % % % % % % % % % % % % % % % % % % % % % % % % 

inc(S,X):-
  {S=X+1}.

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% debut de votre code ici %%%
    longueur([],0).
    
    longueur([_Prem|Fin],Res):-
        longueur(Fin,ResPrec),
        inc(Res,ResPrec).

  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


lireListe([E|L]):-
  readln([E|_]), !, 
  lireListe(L).
lireListe([]).


main :- 
  writeln('Votre liste ? (un entier par ligne, un ligne blanche à la fin.)'),
  lireListe(Entree),
  longueur(Entree,Sortie),
  write('Longueur : '),
  writeln(Sortie).


:- use_module(library(clpq)), main, halt.