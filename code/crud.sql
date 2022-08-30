-- C - Create Function = INSERT
INSERT INTO coffe_house VALUES (10, 'Широкая ул., 15', '08/08/2020 17:30', '12/12/9999 17:30');
INSERT INTO staff VALUES (13, 2, 'Повар', 60000, 'Ирина  Евгеньевна Соловьева', false);
INSERT INTO staff VALUES (14, 2, 'Никто', 10000, 'Кто-то', false);
INSERT INTO online_clients VALUES (9, NULL, 340, 9);
INSERT INTO online_orders VALUES (9, 'Эспрессо', 2);

-- R - Read Function = SELECT
SELECT  MIN(PRICE)
FROM dishes;

SELECT AVG(PRICE)
FROM dishes;

-- U - Update Function = UPDATE
UPDATE STAFF
SET salary = 45000
WHERE id_person = 2;

UPDATE online_clients
SET price = price*0.8
WHERE id_client = 0;

-- D - Delete Function = DELETE
DELETE FROM STAFF
WHERE id_person = 14;
