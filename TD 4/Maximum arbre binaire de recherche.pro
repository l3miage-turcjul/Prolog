% % % % % % % % % % % % % % % % % % % % % % % % %
% Programmes à écrire :
%   lire un arbre binaire de recherche 
%   chercher le maximum (si possible sans parcourir tout l'arbre)
%   afficher le résultat
% 
% le programme principal, la lecture, l'ecriture et le lancement de l'exécution sont donnés
%
% il ne reste plus qu'à ecrire le prédicat "maximum" avec le profil attendu :
% maximum(en entrée un arbre binaire de recherche, en entrée un entier) vrai ssi l'entier est l'entier le plus grand de l'arbre
% % % % % % % % % % % % % % % % % % % % % % % % % 

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% debut de votre code ici %%%

    maximum([Prem,_Gauche,[]],Prem).


    maximum([_Prem,_Gauche,Droite],Res):-
        maximum(Droite,Res).
        
    
    
  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Code de recherche inutile par la suite%%%
  gt(X,Y):-
  {X>Y}.
%cas arbre avec une seule feuille
maximum([Prem],Prem).
%cas arbre branche deux coté
maximum([Prem,[PG|Gauche],[PD|Droite]],Res):-
    maximum([PG|Gauche],ResGauche),
    maximum([PD|Droite],ResDroit),
    max(Prem,ResGauche,ResDroit,Res).

maximum([Prem,[],[PD|Droite]],ResDroit):-
    maximum([PD|Droite],ResDroit),
    gt(ResDroit,Prem).
    
maximum([Prem,[],[PD|Droite]],Prem):-
    maximum([PD|Droite],ResDroit),
    gt(Prem,ResDroit).

maximum([Prem,[PG|Gauche],[]],ResGauche):-
    maximum([PG|Gauche],ResGauche),
    gt(ResGauche,Prem).

maximum([Prem,[PG|Gauche],[]],ResGauche):-
    maximum([PG|Gauche],ResGauche),
    gt(Prem,ResGauche).
    
max(Prem,Sec,Trois,Prem):-
    gt(Prem,Sec),
    gt(Prem,Trois).

max(Prem,Sec,Trois,Sec):-
    gt(Sec,Prem),
    gt(Sec,Trois).

max(Prem,Sec,Trois,Trois):-
    gt(Prem,Sec),
    gt(Trois,Sec).
    
max(Prem,Sec,Trois,Trois):-
    gt(Sec,Prem),
    gt(Trois,Prem).
%%% Code de recherche inutile par la suite%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



ecrireListe([]).
ecrireListe([E|L]):-
  writeln(E),
  ecrireListe(L).

main :- 
  writeln('Votre arbre ? (un point à la fin)'),
  read(Entree), !,
  maximum(Entree,Sortie),
  write('Resultat : '),
  writeln(Sortie).

:- use_module(library(clpq)), main.