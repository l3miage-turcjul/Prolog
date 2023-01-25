% % % % % % % % % % % % % % % % % % % % % % % % %
% Programme à écrire (main) :
%   lire une requête "ancetre(X,Y)." sur des membres de la famille Ingalls (charles, laura, mary, rose, ...)
%   exécuter la requête
%   afficher les résultats
% 
% le programme principal, la lecture, l'ecriture et le lancement de l'exécution sont donnés
%
% il ne reste plus qu'à ecrire le prédicat "ancetre" avec le profil attendu :
% ancetre(en entrée un nom, en sortie un nom)
% sachant qu'un individu peut avoir plusieurs ancêtres : parent, grand-parent et au delà
% le prédicat parent de la famille Ingalls est donné en extension en listant l'ensemble des cas
% le prédicat ancetre ne doit pas être une relation en extension 
% le prédicat ancetre doit utiliser le prédicat parent et récursivement le prédicat ancetre en cours d'écriture 
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



siAncetre(X,Y):-
  ancetre(X,Y).
siAncetre(_X,nil).
siAncetre(nil,_Y).

main :-
  writeln('Qui ? (charles, mary, ...), suivi d''un point'),
  read(Entree),
  siAncetre(Entree,Suivant),
  siAncetre(Antecedent,Entree),
  write('Suivant : '),
  writeln(Suivant),
  write('Antécédent : '),
  writeln(Antecedent).
  
:- main, halt.