% % % % % % % % % % % % % % % % % % % % % % % % %
% Programmes à écrire :
%   lire un arbre binaire de recherche et un entier
%   inserer l'entier dans l'arbre
%   afficher le résultat
% 
% le programme principal, la lecture, l'ecriture et le lancement de l'exécution sont donnés
%
% il ne reste plus qu'à ecrire le prédicat "insertion" avec le profil attendu :
% inserer(en entrée un arbre binaire de recherche, en entrée un entier, en sortie un arbre binaire de recherche)
% % % % % % % % % % % % % % % % % % % % % % % % % 

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% debut de votre code ici %%%
  
  %il nous faut un outil de comparaison, ici gt est vrai ssi X>Y.
  gt(X,Y):-
  {X>Y}.
  
  %il nous faut un second outil de comparaison, ici egal est vrais ssi X=Y
  egal(X,Y):-
  {X=Y}.
  
  %On traite le cas le plus simple; l'arbre est vide, on peux donc insérer le chiffre au début
insertion([],Chiffre,[Chiffre,[],[]]).

%On teste si le chiffre à insérer est supérieur au premier chiffre, si ,c'est le cas, on appel récursivement la fonction
%On renvoie l'arbre local ainsi que le résultat sur la partie droite.
insertion([Prem,Gauche,Droite],Chiffre,[Prem,Gauche,Res]):-
    gt(Chiffre,Prem),
    insertion(Droite,Chiffre,Res).
    
%On teste si le chiffre à insérer est inférieur au premier chiffre, si ,c'est le cas, on appel récursivement la fonction
%On renvoie l'arbre local ainsi que le résultat sur la partie gauche.    
insertion([Prem,Gauche,Droite],Chiffre,[Prem,Res,Droite]):-
    gt(Prem,Chiffre),
    insertion(Gauche,Chiffre,Res).

%On teste si le chiffre à insérer est égal au premier chiffre, si ,c'est le cas,on renvoie l'arbre local inchangé.
insertion([Prem|Fin],Chiffre,[Prem|Fin]):-
    egal(Chiffre,Prem).
    
  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



main :- 
  writeln('Votre arbre ? (un point à la fin)'),
  read(Entree),
  writeln('Entier a rechercher ? (un point à la fin)'),
  read(N), !,
  insertion(Entree,N,Sortie),
  write('Resultat : '),
  writeln(Sortie).

:- use_module(library(clpq)), main, halt.