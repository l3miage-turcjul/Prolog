% % % % % % % % % % % % % % % % % % % % % % % % %
% Programme à écrire (main) :
%   lire une requête "superieur(X,Y)." sur des nombres romains (o, i , ii, iii, iv, v, vi, vii, viii, ix, ..., xxv)
%   exécuter la requête
%   afficher les résultats
% 
% le programme principal, la lecture, l'ecriture et le lancement de l'exécution sont donnés
%
% il ne reste plus qu'à ecrire le prédicat "superieur" avec le profil attendu :
% superieur(en entrée un nombre romain, en entrée un nombre romain)
% le prédicat plus1 pour passer d'un nombre romain au suivant (+1) est donné en extension en listant l'ensemble des cas
% le prédicat superieur ne doit pas être une relation en extension 
% le prédicat superieur doit utiliser le prédicat plus1, éventuellement d'autres à spécifier clairement
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

selonSuperieur(X,Y,superieur) :-
  superieur(X,Y).
selonSuperieur(X,Y,inferieur) :-
  superieur(Y,X).
selonSuperieur(X,X,egal).

  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


  

main :-
  writeln('Donner un premier nombre romain (o, i , ii, iii, iv, v, vi, vii, viii, ix, ..., xxv) suivi d''un point.'),
  read(Entree1),
  writeln('Donner un second nombre romain (o, i , ii, iii, iv, v, vi, vii, viii, ix, ..., xxv) suivi d''un point.'),
  read(Entree2),
  selonSuperieur(Entree1,Entree2,Sortie),
  write('Resultat : '),
  writeln(Sortie).
  
:- main, halt.