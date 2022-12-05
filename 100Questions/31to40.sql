/*31 : Sélectionner les directeurs des services 2 ,3 , 4, 5 sans le IN.*/
-- a corriger
SELECT nom, prenom
FROM emp
WHERE emploi = 'DIRECTEUR' 
AND (noserv = 2 OR noserv = 3 OR noserv = 4 OR noserv = 5);

/*32 :Sélectionner les employés dont le nom commence par la lettre M.*/
SELECT nom
FROM emp
WHERE nom LIKE 'M%';

/*33 : Sélectionner les employés dont le nom se termine par T.*/
SELECT nom
FROM emp
WHERE nom LIKE '%T';

/*34 : Sélectionner les employés ayant au moins deux E dans leur nom.*/
SELECT nom
FROM emp
WHERE nom LIKE '%E%E';

/*35 : Sélectionner les employés ayant exactement un E dans leur nom.*/
-- a revoir
SELECT nom
FROM emp
WHERE nom = '_e';

/*36 : Sélectionner les employés ayant au moins un N et un O dans leur nom.*/
-- a revoir
SELECT nom
FROM emp
WHERE nom = '_n' AND nom = '_o';

/*37 : Sélectionner les employés dont le nom s'écrit avec 6 caractères et qui se termine par N.*/
SELECT nom
FROM emp
WHERE nom LIKE '%N'
AND LENGTH(nom) = 6;

/*38 : Sélectionner les employés dont la troisième lettre du nom est un R.*/
SELECT nom
FROM emp
WHERE nom LIKE '__R%';

/*39 : Sélectionner les employés dont le nom ne s'écrit pas avec 5 caractères.*/
SELECT nom
FROM emp
WHERE LENGTH(nom) != 5;

/*40 : Trier les employés (nom, prénom, n° de service, salaire) du service 3 par ordre de salaire croissant.*/
SELECT nom, prenom, noserv, sal
FROM emp
WHERE noserv = 3
ORDER BY sal;