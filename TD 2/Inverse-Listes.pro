% % % % % % % % % % % % % % % % % % % % % % % % %
% Programme à écrire (main) :
%   lire une liste d'entiers (un entier par ligne), liste terminée par une ligne vide
%   inverser la liste 
%   afficher la liste
% 
% le programme principal, la lecture et  l'ecriture sont donnés
%
% il ne reste plus qu'à ecrire le prédicat qui inverse une liste
% profil attendu :
% inverse(en entrée une liste, en sortie une liste)
%
% indication : il faut parfois utiliser un prédicat auxiliaire !
%              (attention : ne pas oublier de définir aussi votre prédicat auxiliaire)
% % % % % % % % % % % % % % % % % % % % % % % % % 

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

    inverse([],[]).
    
    inverse([Prem|Fin],FinRes2):-
        inverse(Fin,FinRes),
        concat2(FinRes,Prem,FinRes2).
        

    %concat2([],Lst,Lst)
    %concat2([_Prem|Fin],Nb,Res):-
    %   concat2(Fin,Nb,Res). 

    %concat2([Prem|[]],Nb,[Prem,Nb]).
    
    concat2([],Nb,[Nb]).
    
    concat2([Prem|Fin],Lst2,[Prem|Res]):-
        concat2(Fin,Lst2,Res).
  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




main :- 
  writeln('Votre liste ? (un entier par ligne, un ligne blanche à la fin)'),
  lireListe(Entree),
  inverse(Entree,Sortie),
  writeln('Liste inversée : '),
  ecrireListe(Sortie).
  

  
:- main, halt.  

