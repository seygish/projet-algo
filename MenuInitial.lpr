program MenuInitial;
{Rôle:}

uses GestionEcran, UPageAcceuil, Ufonctionnalite;
var
  positionTexte1,positionTexte2:coordonnees;// Variables de travaille donnant les positions des deux choix du menu
  choix:Integer;// Variable qui détermine le choix de l'utilisateur
  //deplacement:Integer;// Valeur de déplacement du curseur


{principe:}

begin
  repeat

    // change la couleur du texte en vert
    couleurTexte(2);

    // dessine un cadre vert double autour de l'écran
    dessinerCadreXY(0,0,119,29,double,2,0);

    // initialisation de la position du premier texte pour le premier choix
    positionTexte1.x := 53;
    positionTexte1.y := 26;
    ecrireEnPosition(positionTexte1,'1-Commencer la partie');

    // initialisation de la position du premier texte pour le premier choix
    positionTexte2.x := 55;
    positionTexte2.y := 27;
    ecrireEnPosition(positionTexte2,'2-Quitter le jeu');

    // cadre du curseur
    dessinerCadreXY(114,26,118,28,simple,2,0);

    // déplace le curseur sur ça position
    deplacerCurseurXY(116,27);

    // initialiser varaible choix
    choix := 0;

    // répéter jusqu'a ce que l'utilisateur tape 1 ou 2
    repeat
     readln(choix);
     deplacerCurseurXY(116,27);
    until (choix=1) or (choix=2);

    // si il tape 1 lancer la partie sinon fermer
    case choix of
    1: pageAcceuil;
    2:; // quitter l'application
      end;

  until choix=2 ;
end.

