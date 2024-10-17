-- Active: 1728912023490@@127.0.0.1@3306@hotel
select station.sta_nom, AVG(DATEDIFF(reservation.res_date_fin, reservation.res_date_debut) )
from reservation
join chambre on reservation.res_cha_id=chambre.cha_id
join hotel on chambre.cha_hot_id=hotel.hot_id
right join station on hotel.hot_sta_id=station.sta_id
group by station.sta_nom;