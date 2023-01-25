% % % % % % % % % % % % % % % % % % % % % % % % %
% Programme à écrire (main) :
%   lire une liste d'entiers
%   échanger le premier élément avec le dernier
%   afficher le resultat
% 
% le programme principal, la lecture et  l'ecriture sont donnés
%
% il ne reste plus qu'à ecrire le prédicat qui échange premier et dernier
% profil attendu :
% echangePremierDernier(en entrée une liste, en sortie une liste)
%
% Indication : l'utilisation d'un prédicat de concaténation peut aider.
%   L'exercice peut donc commencer par l'ecriture (ou le rappel) d'un prédicat
%   de concaténation.
%
% % % % % % % % % % % % % % % % % % % % % % % % % 

lireListe([E|L]):-
  readln([E|_]), !,
  lireListe(L).
lireListe([]).


  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%% debut de votre code ici %%%
echangePremierDernier([[Head],[Mid],[Tail]],Sortie):-
    concat([Tail],[Mid],Temp),
    concat(Temp,[Head],Sortie).

  %%% fin de votre code  ici  %%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


main :- 
  writeln('Votre liste ? (un entier par ligne, un ligne blanche à la fin)'),
  lireListe(Entree),
  echangePremierDernier(Entree,Sortie),
  write('Resultat :'),
  writeln(Sortie).
  
:- main.