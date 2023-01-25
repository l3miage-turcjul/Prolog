% % % % % % % % % % % % % % % % % % % % % % % % %
% Programme à écrire (main) :
%   lire une requête "directionSud(X,Y)." pour des positions sur une carte donnée
%   exécuter la requête
%   afficher les résultats
% 
% le programme principal, la lecture, l'ecriture et le lancement de l'exécution sont donnés
%
% il ne reste plus qu'à ecrire le prédicat "directionSud" avec le profil attendu :
% directionSud(en entrée un nombre, en sortie un nombre)
% le prédicat doit chercher en premier les régions les plus loins en direction du sud
% les prédicats sud et est pour passer d'une position à une autre sont donnés en extension en listant l'ensemble des cas
% le prédicat directionSud ne doit pas être une relation en extension 
% le prédicat directionSud doit utiliser les prédicats sud et est et récursivement le prédicat directionSud en cours de rédaction
% % % % % % % % % % % % % % % % % % % % % % % % % 

% 0 1 2 3 4
% 5 6 7
% 8 9
% 10
% 11
% 12

sud(0,5).
sud(1,6).
sud(2,7).
sud(5,8).
sud(6,9).
sud(8,10).
sud(10,11).
sud(11,12).
est(0,1).
est(1,2).
est(2,3).
est(3,4).
est(5,6).
est(6,7).
est(8,9).


  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% debut de votre code ici %%%

siDirectionSud(X,Y):-
  directionSud(X,Y).
siDirectionSud(_X,nil).
siDirectionSud(nil,_Y).

  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




main :-
  writeln('Votre région ?'),
  read(Entree),
  siDirectionSud(Entree,Suivant),
  siDirectionSud(Antecedent,Entree),
  write('Suivant : '),
  writeln(Suivant),
  write('Antécédent : '),
  writeln(Antecedent).
  
:- main, halt.