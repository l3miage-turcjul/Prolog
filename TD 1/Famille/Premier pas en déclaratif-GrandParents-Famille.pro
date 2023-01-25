% % % % % % % % % % % % % % % % % % % % % % % % %
% Programme à écrire (main) :
%   lire une requête "grandParent(X,Y)." sur des membres de la famille Ingalls (charles, laura, mary, rose, ...)
%   exécuter la requête
%   afficher les résultats
% 
% le programme principal, la lecture, l'ecriture et le lancement de l'exécution sont donnés
%
% il ne reste plus qu'à ecrire le prédicat "grandParent" avec le profil attendu :
% grandParent(en entrée un nom, en sortie un nom)
% le prédicat parent de la famille Ingalls est donné en extension en listant l'ensemble des cas
% le prédicat grandParent ne doit pas être une relation en extension 
% le prédicat grandParent doit utiliser le prédicat parent 
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

siGrandParent(X,Y):-
  grandParent(X,Y).
siGrandParent(_X,nil).
siGrandParent(nil,_Y).
  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




main :-
  writeln('Qui ? (charles, mary, ...), suivi d''un point'),
  read(Entree),
  siGrandParent(Entree,Suivant),
  siGrandParent(Antecedent,Entree),
  write('Suivant : '),
  writeln(Suivant),
  write('Antécédent : '),
  writeln(Antecedent).
  
:- main, halt.