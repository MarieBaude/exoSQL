/*51 : Sélectionner les nom et date d'embauche des employés suivi des nom et date d'embauche de leur supérieur pour les employés plus ancien que leur supérieur, dans l'ordre nom employés, noms supérieurs.*/
SELECT e.nom, e.embauche, e.emploi, s.nom, s.embauche, s.emploi
FROM emp e, emp s
WHERE e.embauche < s.embauche
AND e.sup = s.noemp
ORDER BY e.nom, s.nom;

/*52 : Sélectionner sans doublon les prénoms des directeurs et « les prénoms des techniciens du service 1 » avec un UNION.*/
SELECT DISTINCT prenom
FROM emp 
WHERE emploi = 'DIRECTEUR'
UNION 
SELECT DISTINCT prenom
FROM emp
WHERE emploi = 'TECHNICIEN' AND noserv = 1;

/*53 : Sélectionner les numéros de services n’ayant pas d’employés sans une jointure externe.*/
SELECT noserv
FROM emp
WHERE ;

/*54 : Sélectionner les services ayant au moins un employé.*/


/*54 bis : Sélectionner les numéros de services ayant des employés sans une jointure externe*/


/*56 : Sélectionner les employés qui ont le même chef que DUBOIS, DUBOIS exclu.*/
SELECT nom, prenom
FROM emp
WHERE sup 
IN 
    (SELECT sup 
    FROM emp 
    WHERE nom = 'DUBOIS')

EXCEPT 
SELECT nom, prenom
FROM emp
WHERE nom = 'DUBOIS';

/*57 : Sélectionner les employés embauchés le même jour que DUMONT.*/
SELECT nom, prenom, embauche
FROM emp
WHERE embauche 
IN 
    (SELECT embauche 
    FROM emp 
    WHERE nom = 'DUMONT');

/*58 : Sélectionner les nom et date d'embauche des employés plus anciens que MINET, dans l’ordre des embauches.*/
SELECT nom, prenom, embauche
FROM emp
WHERE embauche < 
ORDER BY embauche
;


/*59 : Sélectionner le nom, le prénom, la date d’embauche des employés plus anciens que tous les employés du service N°6. (Attention MIN)*/


/*60 : Sélectionner le nom, le prénom, le revenu mensuel des employés qui gagnent plus qu'au moins un employé du service N°3, trier le résultat dans l'ordre croissant des revenus mensuels.*/
