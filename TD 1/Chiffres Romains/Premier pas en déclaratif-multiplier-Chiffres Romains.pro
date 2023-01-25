% % % % % % % % % % % % % % % % % % % % % % % % %
% Programme à écrire (main) :
%   lire une requête "mult(X,Y,Z)." sur des nombres romains (o, i , ii, iii, iv, v, vi, vii, viii, ix, ..., xxv)
%   exécuter la requête
%   afficher les résultats
% 
% le programme principal, la lecture, l'ecriture et le lancement de l'exécution sont donnés
%
% il ne reste plus qu'à ecrire le prédicat "mult" avec le profil attendu :
% mult(en entrée un nombre romain, en entrée un nombre romain, en sortie un nombre romain)
% le prédicat plus1 pour passer d'un nombre romain au suivant (+1) est donné en extension en listant l'ensemble des cas
% le prédicat mult ne doit pas être une relation en extension 
% le prédicat mult doit utiliser le prédicat plus1, éventuellement aussi plus et récursivement le prédicat mult en cours de rédaction
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
      moins1(Nb1,Nb2):-
        plus1(Nb2,Nb1).
  
    plus(Nb1,o,Nb1).
    
    plus(Nb1,Nb2,Res):-
        plus1(Nb1,Nbaj),
        plus1(Nbsous,Nb2),
        plus(Nbaj,Nbsous,Res).  
    
    %mult(_Nb1,o,o).
    %mult(o,_Nb1,o).
    mult(Nb1,1,Nb1).
    %mult(1,Nb1,Nb1).
    
    %mult(Nb1,Nb2,Res):-
    %    plus(Nb1,Nb1,Restmp),
    %    moins1(Nb2,Nbsous),
    %    mult(Restmp,Nbsous,Res).
    
  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


main :-
  writeln('Donner un premier nombre romain (o, i , ii, iii, iv, v, vi, vii, viii, ix, ..., xxv) suivi d''un point.'),
  read(Entree1),
  writeln('Donner un second nombre romain (o, i , ii, iii, iv, v, vi, vii, viii, ix, ..., xxv) suivi d''un point.'),
  read(Entree2),
  mult(Entree1,Entree2,Sortie),
  write('Résultat : '),
  writeln(Sortie).
  
:- main, halt.