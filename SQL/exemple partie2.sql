-- Active: 1728912023490@@127.0.0.1@3306@exemple
select * from employe;


select * from dept;



select employe.nom, prenom, dept.nom
from employe
join dept on employe.nodep=dept.nodept;




select salarie.prenom, patron.prenom
from employe as patron
join employe as salarie on patron.noemp=salarie.nosup;


-- 33. Rechercher le prénom des employés et le numéro de la région de leur
-- département.


select employe.prenom, employe.nodep, dept.nodept, dept.noregion 
from employe
join dept on employe.nodep=dept.nodept;



-- 34. Rechercher le numéro du département, le nom du département, le
-- nom des employés classés par numéro de département (renommer les
-- tables utilisées).
select e.nodep, d.nom, e.nom
from employe e
join dept d on e.nodep=d.nodept
order by 1 ASC;


-- 35. Rechercher le nom des employés du département Distribution.

select e.nom
from employe e
join dept d on e.nodep=d.nodept
where d.nom='distribution';






-- 36. Rechercher le nom et le salaire des employés qui gagnent plus que
-- leur patron, et le nom et le salaire de leur patron.

select e1.prenom as patron, e2.prenom as salarie
from employe e1 
join employe e2 on e1.noemp=e2.nosup;



-- 37. Rechercher le nom et le titre des employés qui ont le même titre que
-- Amartakaldire

select * from employe where titre in (select titre from employe where nom ='Amartakaldire');


-- 38. Rechercher le nom, le salaire et le numéro de département des
-- employés qui gagnent plus qu'un seul employé du département 31,
-- classés par numéro de département et salaire.

select * from employe where salaire > ANY(select salaire from employe where nodep=31);


-- 39. Rechercher le nom, le salaire et le numéro de département des
-- employés qui gagnent plus que tous les employés du département 31,
-- classés par numéro de département et salaire
select * from employe where salaire > ALL(select salaire from employe where nodep=31);


-- 40. Rechercher le nom et le titre des employés du service 31 qui ont un
-- titre que l'on trouve dans le département 32.

select * 
from employe 
where nodep=31 AND titre IN (select titre from employe where nodep=32);


-- 41. Rechercher le nom et le titre des employés du service 31 qui ont un
-- titre l'on ne trouve pas dans le département 32.
select * 
from employe 
where nodep=31 AND titre NOT IN (select titre from employe where nodep=32);


-- 42. Rechercher le nom, le titre et le salaire des employés qui ont le même
-- titre et le même salaire que Fairant.


select * from employe 
where titre = (select titre from employe where nom='fairent')
AND salaire=(select salaire from employe where nom='fairent');





select * 
from employe right join dept on dept.nodept=employe.nodep;


select * 
from dept left join employe on dept.nodept=employe.nodep;




-- 43. Rechercher le numéro de département, le nom du département, le
-- nom des employés, en affichant aussi les départements dans lesquels
-- il n'y a personne, classés par numéro de département

select dept.nodept, dept.nom, employe.nom
from employe right join dept on dept.nodept=employe.nodep
order by dept.nodept;







select MIN(salaire), MAX(salaire), AVG(salaire), COUNT(*), titre
from employe
group by titre;