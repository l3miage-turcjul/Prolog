% % % % % % % % % % % % % % % % % % % % % % % % %
% Programme à écrire (main) :
%   lire une requête "generation(X,Y)." sur des membres de la famille Ingalls (charles, laura, mary, rose, ...)
%   exécuter la requête
%   afficher les résultats
%   sachant que deux individus doivent être reliés s'ils sont de la même génération
% 
% le programme principal, la lecture, l'ecriture et le lancement de l'exécution sont donnés
%
% il ne reste plus qu'à ecrire le prédicat "generation" avec le profil attendu :
% generation(en entrée un nom, en sortie un nom)
% le prédicat parent de la famille Ingalls est donné en extension en listant l'ensemble des cas
% le prédicat generation ne doit pas être une relation en extension 
% le prédicat generation doit utiliser le prédicat parent et récursivement le prédicat generation en cours de définition
% éventuellement, pour éviter de dire qu'un individu est de la même génération que lui-même ou pourra utiliser le prédicat dif
% dif(X,Y) est vrai ssi X et Y sont différents
% % % % % % % % % % % % % % % % % % % % % % % % % 
% Relation de départ : les parents en extension
%parent(X,Y) signifie que X est l'un des parents (père ou mère) de Y

parent(lansford,peter).
parent(peter,alice).
parent(alice,altha).
parent(peter,ella).
parent(ella,earl).
parent(lansford,charles).
parent(charles,mary).
parent(mary,adam).
parent(charles,laura).
parent(laura,rose).
parent(charles,carrie).

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% debut de votre code ici %%%


  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


siGeneration(X,Y):-
  generation(X,Y).
siGeneration(_X,nil).
siGeneration(nil,_Y).

main :-
  writeln('Qui ? (charles, mary, ...), suivi d''un point'),
  read(Entree),
  siGeneration(Entree,Resultat),
  write('Resultat : '),
  writeln(Resultat).
:- main, halt.