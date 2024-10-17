-- Active: 1728912023490@@127.0.0.1@3306@hotel
select * from reservation;


START TRANSACTION;

delete from reservation;

ROLLBACK;

COMMIT;