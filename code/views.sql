/*
 Это представление позволяет узнать данные о работниках
 */
CREATE VIEW staff_info AS
    SELECT person_name,
           salary,
           job_name
    FROM staff;

/*
 Это представление позволяет узнать данные о заказах оффлайн и онлайн клиентов
 */
CREATE VIEW clients_info  AS
    SELECT coffe_house.addr_coffehouse, price
    FROM
    (SELECT id_coffehouse, price
     FROM online_clients
     UNION
     SELECT offline_clients.id_coffehouse, price
     FROM offline_clients) AS t1
    JOIN coffe_house ON t1.id_coffehouse = coffe_house.id_coffehouse;

/*
 Это представление позволяет узнать обезличенные данные о всех официантах и количестве заказов у них
 */
CREATE VIEW waiters_info AS
    SELECT id_person,
           md5(person_name) AS protected_name,
           count(oc.id_client)
    FROM staff LEFT JOIN  offline_clients oc ON staff.id_person = oc.id_waiter
    WHERE job_name ='Официант'
GROUP BY id_person, md5(person_name);

/*
 Это представление позволяет узнать обезличенные данные о поставщиках (имя + адрес, куда он поставляет)
 */
CREATE VIEW suppliers_info AS
    SELECT
    CONCAT(SUBSTRING(supplier_name,1,1),REPEAT('*', length(supplier_name) - 1)), coffe_house.addr_coffehouse
FROM suppliers  JOIN coffe_house ON suppliers.id_coffehouse = coffe_house.id_coffehouse;

/*
 Это представление позволяет узнать, сколько работников в каждой кофейне и какова их суммарная зарплата на текущий момент
 */
CREATE VIEW coffe_houses_info AS
    SELECT COUNT(id_person),
           SUM(salary),
           ch.addr_coffehouse
    FROM staff LEFT JOIN coffe_house ch ON staff.id_coffehouse = ch.id_coffehouse
    WHERE valid_to >= '08/15/2022 20:40'
GROUP BY  addr_coffehouse;


/*
 Это представление позволяет узнать, какие заказы и где ждут сейчас курьера
 */
 CREATE VIEW online_clients_wait AS
    SELECT online_clients.id_client, ch.addr_coffehouse
    FROM online_clients LEFT JOIN coffe_house ch ON online_clients.id_coffehouse = ch.id_coffehouse
    WHERE online_clients.id_courier IS NULL;
