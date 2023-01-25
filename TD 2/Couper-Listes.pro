% % % % % % % % % % % % % % % % % % % % % % % % %
% Programme à écrire (main) :
%   lire une liste d'entiers
%   couper en deux parties égales (si possible) son début et sa fin
%   afficher le resultat
% 
% si la liste est de longueur impair, mettre un élément de plus dans le début lors de la découpe
%
% le programme principal, la lecture et  l'ecriture sont donnés
%
% il ne reste plus qu'à ecrire le prédicat qui coupe
% profil attendu :
% coupe(en entrée une liste, en sortie deux listes)
%
% Indication : si vous pensez qu'un prédicat de concaténation peut aider, 
%   penser à l'écrire. 
%   Idem pour un prédicat qui vérifie que deux listes sont de même taille.
% % % % % % % % % % % % % % % % % % % % % % % % % 

lireListe([E|L]):-
  readln([E|_]), !,
  lireListe(L).
lireListe([]).


  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% debut de votre code ici %%%
    %coupe([],[],[]).
    
    %coupe([_Elem|Fin],[],[]).
    
    %coupe([Pr|Fin],[Pr|Debut],FinLst):-
        %coupe(Fin,Debut,FinLst),
        %check([Pr|Debut],Fin,0).
        
      %coupe([Pr|Fin],[Pr],Fin):-
        %check([Pr],Fin,1).
    
    check([_Lst1Prem|Lst1Fin],[_Lst2Prem|Lst2Fin]):-
        check(Lst1Fin,Lst2Fin).
        
    check([],[]).
    
    check([_Elem],[]).
    
    coupe(Lst,DebLst,FinLst):-
        concat2(DebLst,FinLst,Lst), %on fait marcher concat2 à l'enver
        check(DebLst,FinLst).
    
    concat2([],Nb,[Nb]).
    
    concat2([Prem|Fin],Lst2,[Prem|Res]):-
        concat2(Fin,Lst2,Res).
        
  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


main :- 
  writeln('Votre liste ? (un entier par ligne, un ligne blanche à la fin)'),
  lireListe(Entree),
  coupe(Entree,Debut,Fin),
  write('Debut :'),
  writeln(Debut),
  write('Fin :'),
  writeln(Fin).
  
:- main, halt.