% % % % % % % % % % % % % % % % % % % % % % % % %
% Programme à écrire (main) :
%   lire une requete de recherche
%   effectuer la recherche
%   afficher le résultat
% 
% le programme principal, la lecture et l'ecriture sont donnés
%
% il ne reste plus qu'à ecrire le prédicat de recherche
% profil attendu :
% recherche(en entrée un dictionnaire, en entrée un entier, en sortie un entier)
% éventuellement, vous pourrez utiliser le prédicat dif(X,Y) vrai si X et Y sont différents
% % % % % % % % % % % % % % % % % % % % % % % % % 

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% debut de votre code ici %%%
recherche([],Indi,-1).

recherche([Val|List],Indi,Res):-
    dif(Val,Indi),
    recherche([List],Indi,Res).
    
recherche([Val|List],Indi,Res):-
    recherche([List],Indi,Res).


  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



main :- 
  writeln('Votre requete ? (un point à la fin)'),
  read(Entree),
  findall(Entree,Entree,Resultats),
  write('Résultat : '),
  writeln(Resultats).
main.

:- main.
