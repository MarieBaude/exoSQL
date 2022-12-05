/*21 : Sélectionner les « directeurs et les techniciens » du service 1.*/
SELECT nom, prenom
FROM emp
WHERE emploi = 'TECHNICIEN' OR emploi = 'DIRECTEUR' AND noserv = 1;

/*22 : Sélectionner les employés du service 1 qui sont directeurs ou techniciens.*/


/*23 : Sélectionner les employés qui ne sont ni directeur, ni technicien et travaillant dans le service 1.*/


/*24 : Sélectionner les employés qui sont techniciens, comptables ou vendeurs.*/


/*25 : Sélectionner les employés qui ne sont ni technicien, ni comptable, ni vendeur.*/


/*26 : Sélectionner les directeurs des services 2, 4 et 5.*/


/*27 : Sélectionner les subalternes qui ne sont pas dans les services 1, 3, 5.*/


/*28 : Sélectionner les employés qui gagnent entre 20000 et 40000 euros, bornes comprises.*/


/*29 : Sélectionner les employés qui gagnent moins de 20000 et plus de 40000 euros.*/


/*30 : Sélectionner les employés qui ne sont pas directeur et qui ont été embauchés en 88.*/