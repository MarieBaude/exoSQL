/*21 : Sélectionner les « directeurs et les techniciens » du service 1.*/
SELECT nom, prenom
FROM emp
WHERE emploi = 'TECHNICIEN' AND noserv = 1
OR emploi = 'DIRECTEUR' AND noserv = 1;

/*22 : Sélectionner les employés du service 1 qui sont directeurs ou techniciens.*/
SELECT nom, prenom
FROM emp
WHERE emploi = 'TECHNICIEN' OR emploi = 'DIRECTEUR' AND noserv = 1;

/*23 : Sélectionner les employés qui ne sont ni directeur, ni technicien et travaillant dans le service 1.*/
SELECT nom, prenom
FROM emp
WHERE emploi != 'TECHNICIEN' AND noserv = 1
OR emploi != 'DIRECTEUR' AND noserv = 1;

/*24 : Sélectionner les employés qui sont techniciens, comptables ou vendeurs.*/
SELECT nom, prenom, emploi
FROM emp
WHERE emploi = 'TECHNICIEN' OR emploi = 'COMPTABLE' OR emploi = 'VENDEUR';

/*25 : Sélectionner les employés qui ne sont ni technicien, ni comptable, ni vendeur.*/
SELECT nom, prenom, emploi
FROM emp
WHERE emploi != 'TECHNICIEN' OR emploi != 'COMPTABLE' OR emploi != 'VENDEUR';

/*26 : Sélectionner les directeurs des services 2, 4 et 5.*/
SELECT nom, prenom, noserv
FROM emp
WHERE emploi = 'DIRECTEUR' AND noserv = 2 OR noserv = 4 OR noserv = 5;

/*27 : Sélectionner les subalternes qui ne sont pas dans les services 1, 3, 5.*/
SELECT nom, prenom
FROM emp
WHERE (emploi != 'TECHNICIEN' AND noserv != 1 AND noserv != 3 AND noserv != 5)
OR (emploi != 'DIRECTEUR' AND noserv != 1 AND noserv != 3 AND noserv != 5);

/*28 : Sélectionner les employés qui gagnent entre 20000 et 40000 euros, bornes comprises.*/
SELECT nom, prenom, sal
FROM emp
WHERE sal BETWEEN 20000 AND 40000;

/*29 : Sélectionner les employés qui gagnent moins de 20000 et plus de 40000 euros.*/
SELECT nom, prenom, sal
FROM emp
WHERE sal < 20000 
OR sal > 40000;

/*30 : Sélectionner les employés qui ne sont pas directeur et qui ont été embauchés en 88.*/
SELECT nom, prenom, embauche
FROM emp
WHERE emploi != 'DIRECTEUR' 
AND embauche = YEAR('1988');
