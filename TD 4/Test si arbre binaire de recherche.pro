% % % % % % % % % % % % % % % % % % % % % % % % %
% Programmes à écrire :
%   lire un arbre binaire 
%   chercher si c'est un arbre binaire de recherche
%   afficher le résultat
% 
% le programme principal, la lecture, l'ecriture et le lancement de l'exécution sont donnés
%
% il ne reste plus qu'à ecrire le prédicat "estABR" avec le profil attendu :
% estABR(en entrée un arbre binaire de recherche) vrai ssi l'arbre est dans un arbre binaire de recherche
% % % % % % % % % % % % % % % % % % % % % % % % % 


  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% debut de votre code ici %%%
gt(X,Y):-
  {X>Y}.
  
estABR([]).
  
estABR([_Prem,[],[]]).

estABR([Prem,[Droite|FinD],[Gauche|FinG]]):-
    gt(Prem,Droite),
    gt(Gauche,Prem),
    estABR([Droite|FinD]),
    estABR([Gauche|FinG]).
    
estABR([Prem,[Droite|FinD],[]]):-
    gt(Prem,Droite),
    estABR([Droite|FinD]).

estABR([Prem,[],[Gauche|FinG]]):-
    gt(Gauche,Prem),
    estABR([Gauche|FinG]).



  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


ecrireListe([]).
ecrireListe([E|L]):-
  writeln(E),
  ecrireListe(L).

suiteMain(A,abr) :-
  estABR(A), !.
suiteMain(_A,pas_abr).
  

main :- 
  writeln('Votre arbre ? (un point à la fin)'),
  read(Entree), !,
  suiteMain(Entree,Sortie),
  write('Resultat : '),
  writeln(Sortie).

:- use_module(library(clpq)), main.