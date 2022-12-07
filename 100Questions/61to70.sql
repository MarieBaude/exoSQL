/*61 : Sélectionner les noms, le numéro de service, l’emplois et le salaires des personnes travaillant dans la même ville que HAVET.*/
SELECT nom, serv.noserv, emploi, sal, serv.ville
FROM emp
INNER JOIN serv ON emp.noserv = serv.noserv
WHERE serv.ville = 'LILLE';

/*62 : Sélectionner les employés du service 1, ayant le même emploi qu'un employé du service N°3.*/
-- SELECT nom, prenom, noserv, emploi
-- FROM emp emp1
-- WHERE noserv = 1
--     (SELECT nom, prenom, noserv, emploi
--     FROM emp emp2
--     WHERE noserv = 3
--     AND emp1.emploi = emp2.emploi);



/*63 : Sélectionner les employés du service 1 dont l'emploi n'existe pas dans le service 3.*/


/*64 : Sélectionner nom, prénom, emploi, salaire pour les employés ayant même emploi et un salaire supérieur à celui de CARON.*/


/*65 : Sélectionner les employés du service N°1 ayant le même emploi qu'un employé du service des VENTES.*/


/*66 : Sélectionner les employés de LILLE ayant le même emploi que RICHARD, trier le résultat dans l'ordre alphabétique des noms.*/


/*67 : Sélectionner les employés dont le salaire est plus élevé que le salaire moyen de leur service (moyenne des salaires = avg(sal)), résultats triés par numéros de service.*/
-- Merci Cyril pour la solution
SELECT nom, sal
FROM emp emp1
WHERE sal >
    (SELECT AVG(sal)
    FROM emp emp2
    WHERE emp1.noserv = emp2.noserv)
ORDER BY noserv;

/*68 : Sélectionner les employés du service INFORMATIQUE embauchés la même année qu'un employé du service VENTES.( année : to_char(embauche,’YYYY’) )*/


/*69 : Sélectionner le nom, l’emploi, la ville pour les employés qui ne travaillent pas dans le même service que leur supérieur hiérarchique direct.*/


/*70 : Sélectionner le nom, le prénom, le service, le revenu des employés qui ont des subalternes, trier le résultat suivant le revenu décroissant.*/