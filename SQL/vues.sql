
drop view vue1;




create view vue1
as
select employe.nom, employe.prenom, employe.salaire, dept.nodept, dept.nom as 'departement'
from employe
join dept on employe.nodep=dept.nodept
where dept.nom='distribution';




alter view vue1
as
select employe.nom, employe.prenom, employe.salaire, dept.nodept, dept.nom as 'departement'
from employe
join dept on employe.nodep=dept.nodept
where dept.nom='distribution';

select prenom from vue1;



