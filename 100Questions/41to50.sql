/*41 : Trier les employés (nom, prénom, n° de service , salaire) du service 3 par ordre de salaire décroissant.*/
SELECT nom, prenom, noserv, sal
FROM emp
WHERE noserv = 3
ORDER BY sal DESC;

/*42 : Idem en indiquant le numéro de colonne à la place du nom colonne.*/
SELECT nom AS "1", prenom AS "2", noserv AS "3", sal AS "4"
FROM emp
WHERE noserv = 3
ORDER BY sal DESC;

/*43 : Trier les employés (nom, prénom, n° de service, salaire, emploi) par emploi, et pour chaque emploi par ordre décroissant de salaire.*/
SELECT nom, prenom, noserv, sal, emploi
FROM emp
ORDER BY emploi DESC, sal DESC;

/*44 : Idem en indiquant les numéros de colonnes.*/
SELECT nom AS "1", prenom AS "2", noserv AS "3", sal AS "4", emploi AS "5"
FROM emp
ORDER BY emploi DESC, sal DESC;

/*45 : Trier les employés (nom, prénom, n° de service, commission) du service3 par ordre croissant de commission.*/
SELECT nom, prenom, noserv, comm
FROM emp
WHERE noserv = 3
ORDER BY comm;

/*46 : Trier les employés (nom, prénom, n° de service, commission) du service 3 par ordre décroissant de commission, en considérant que celui dont la commission est nulle ne touche pas de commission.*/
SELECT nom, prenom, noserv, comm
FROM emp
WHERE noserv = 3
AND comm IS NOT NULL
ORDER BY comm DESC;

/*47 : Sélectionner le nom, le prénom, l'emploi, le nom du service de l'employé pour tous les employés.*/
SELECT nom, prenom, emploi, service
FROM emp
INNER JOIN serv ON emp.noserv = serv.noserv;

/*48 : Sélectionner le nom, l'emploi, le numéro de service, le nom du service pour tous les employés.*/
SELECT emp.noserv, nom, prenom, emploi, service
FROM emp
INNER JOIN serv ON emp.noserv = serv.noserv;

/*49 : Idem en utilisant des alias pour les noms de tables.*


/*50 : Sélectionner le nom, l'emploi, suivis de toutes les colonnes de la table SERV pour tous les employés.*/