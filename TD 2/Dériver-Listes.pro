% % % % % % % % % % % % % % % % % % % % % % % % %
% Programme à écrire (main) :
%   lire une liste d'entiers (un entier par ligne), liste terminée par une ligne vide
%   dériver la liste 
%   afficher la liste
% 
% le programme principal, la lecture et  l'ecriture sont donnés
%
% il ne reste plus qu'à ecrire le prédicat qui dérive une liste (donne la liste des différences 
% entre les éléments successif de la liste initiale
% profil attendu :
% dérive(en entrée une liste, en sortie une liste)
%
% % % % % % % % % % % % % % % % % % % % % % % % % 

moins(R,A,B):-
  {R=A-B}.

lireListe([E|L]):-
  readln([E|_]), !,
  lireListe(L).
lireListe([]).

ecrireListe([]).
ecrireListe([E|L]):-
  writeln(E),
  ecrireListe(L).


  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% debut de votre code ici %%%

    derive([_Prem|[]],[]).
    
    derive([Prem,Sec|Fin],[PremRes|LstRes]):-
        derive([Sec|Fin],LstRes),
        moins(PremRes,Sec,Prem).

  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




main :- 
  writeln('Votre liste ? (un entier par ligne, un ligne blanche à la fin)'),
  lireListe(Entree),
  derive(Entree,Sortie),
  writeln('Liste dérivée : '),
  ecrireListe(Sortie).
  

  
:- use_module(library(clpq)), main, halt. 
