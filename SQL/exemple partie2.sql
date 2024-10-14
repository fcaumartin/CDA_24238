select * from employe;


select * from dept;



select employe.nom, prenom, dept.nom
from employe
join dept on employe.nodep=dept.nodept;




select salarie.prenom, patron.prenom
from employe as patron
join employe as salarie on patron.noemp=salarie.nosup;