% % % % % % % % % % % % % % % % % % % % % % % % %
% Programme à écrire (main) :
%   lire une requête "plus(X,Y,Z)." sur des nombres romains (o, i , ii, iii, iv, v, vi, vii, viii, ix, ..., xxv)
%   exécuter la requête
%   afficher les résultats
% 
% le programme principal, la lecture, l'ecriture et le lancement de l'exécution sont donnés
%
% il ne reste plus qu'à ecrire le prédicat "plus" avec le profil attendu :
% plus(en entrée un nombre romain, en entrée un nombre romain, en sortie un nombre romain)
% le prédicat plus1 pour passer d'un nombre romain au suivant (+1) est donné en extension en listant l'ensemble des cas
% le prédicat plus ne doit pas être une relation en extension 
% le prédicat plus doit utiliser le prédicat plus1 et récursivement le prédicat plus en cours de rédaction
% % % % % % % % % % % % % % % % % % % % % % % % % 

plus1(o,i).
plus1(i,ii).
plus1(ii,iii).
plus1(iii,iv).
plus1(iv,v).
plus1(v,vi).
plus1(vi,vii).
plus1(vii,viii).
plus1(viii,ix).
plus1(ix,x).
plus1(x,xi).
plus1(xi,xii).
plus1(xii,xiii).
plus1(xiii,xiv).
plus1(xiv,xv).
plus1(xv,xvi).
plus1(xvi,xvii).
plus1(xvii,xviii).
plus1(xviii,xix).
plus1(xix,xx).
plus1(xx,xxi).
plus1(xxi,xxii).
plus1(xxii,xxiii).
plus1(xxiii,xxiv).
plus1(xxiv,xxv).

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% debut de votre code ici %%%
  
  %Le principe de ce programme est simple: pour additionner deux chiffres, il existe un nombre d'addition de 1 correspondant à celui-ci.
  %On peux donc utiliser ce nombre comme une référence quand au nombre d'addition de 1 à faire. Pour éviter de tourner en rond,
  %nous devons cependant faire décroitre le nombre d'addition de 1 à encore effectuer.
  %Enfin, une fois que le nombre d'addition à effectuer est égal à 0, on peux renvoyer le nombre pris en entré car il correspond au resultat attendu.
    plus(Nb1,o,Nb1).
    %ici, on s'occupe de la condition d'arrêt de la fonction récursive. Ici, le nombre d'addition à encore effectuer est de 0.
    %On peut donc renvoyer le nombre.
    
    %ici, on s'occupe de l'exécution récursive de la fonction.
    plus(Nb1,Nb2,Res):-
        plus1(Nb1,Nbaj), %On commence par ajouter un au nombre.
        plus1(Nbsous,Nb2), %Dans le même temps, on doit faire diminuer le nombre d'addition à encore effctuer pour arriver au résultat attendu.
        %Il est à noter que la diminution se fait par l'execution inverse des prédicats plus1.
        plus(Nbaj,Nbsous,Res). %Enfin, on rappel la fonction avec les nombres précédements calculés.
        

  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

main :-
  writeln('Donner un premier nombre romain (o, i , ii, iii, iv, v, vi, vii, viii, ix, ..., xxv) suivi d''un point.'),
  read(Entree1),
  writeln('Donner un second nombre romain (o, i , ii, iii, iv, v, vi, vii, viii, ix, ..., xxv) suivi d''un point.'),
  read(Entree2),
  plus(Entree1,Entree2,Sortie),
  write('Résultat : '),
  writeln(Sortie).
  
:- main, halt.