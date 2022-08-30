/*
    В результате выполнения данного запроса будут получены идентефикаторы официантов,
    у которых на данный момент больше одного клиента
 */
SELECT distinct id_person
FROM staff INNER JOIN offline_clients oc on staff.id_person = oc.id_waiter
GROUP BY id_person
HAVING count(id_person) > 1;


/*
     В результате выполнения данного запроса будут выведены идентефикаторы кофеен и средний чек
    по убываюнию среднего чека
*/
select sum(summa)/sum(counted) as mean_check
from
(select id_coffehouse, sum(price) as summa, count(price) as counted
from offline_clients
group by id_coffehouse
union
select id_coffehouse, sum(price) as summa, count(price)as counted
from online_clients
group by id_coffehouse) as t1
group by id_coffehouse
ORDER BY mean_check DESC;



/*
    В результате выполнения данного запроса мы получим топ 5 самых дорогих блюд
 */
SELECT dish_name from
(SELECT RANK() OVER (ORDER BY price DESC), dish_name
FROM dishes) as t1
where t1.rank <=5;


/*
     В результате выполнения данного запроса будут выведен топ-5 заказываемых клиентами блюд для каждой кофейни
*/
select * from
(select  RANK() OVER (PARTITION BY id_coffehouse ORDER BY count(dish_name) DESC) AS rank, dish_name, id_coffehouse
from
(select online_clients.id_client, dish_name, id_coffehouse
from online_orders left join online_clients on online_orders.id_client = online_clients.id_client
union
select offline_clients.id_client, dish_name, id_coffehouse
from offline_orders left join offline_clients on offline_orders.id_client = offline_clients.id_client) as t1
group by id_coffehouse, dish_name) as t2
where rank <=5;



/*
     В результате выполнения данного запроса будет выведено топ-1 блюдо в каждой кофейне
*/


select distinct first_value(dish_name) OVER (PARTITION BY id_coffehouse ORDER BY count(dish_name) DESC) AS top, id_coffehouse
from
(select dish_name, id_coffehouse
from online_orders left join online_clients on online_orders.id_client = online_clients.id_client
union
select dish_name, id_coffehouse
from offline_orders left join offline_clients on offline_orders.id_client = offline_clients.id_client) as t1
group by id_coffehouse, dish_name;


/*
     В результате выполнения данного запроса будет выведено
     число различных блюд, заказанных в этой кофейне
*/
select distinct count(dish_name) OVER (PARTITION BY id_coffehouse) AS dishes_number, id_coffehouse
from
(select dish_name, id_coffehouse
from online_orders left join online_clients on online_orders.id_client = online_clients.id_client
union
select  dish_name, id_coffehouse
from offline_orders left join offline_clients on offline_orders.id_client = offline_clients.id_client) as t3
group by id_coffehouse, dish_name;
