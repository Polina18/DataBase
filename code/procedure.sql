CREATE OR REPLACE FUNCTION free_waiters() RETURNS INTEGER AS $$
    DECLARE
    quantity integer := 0;
    BEGIN
        quantity :=  (SELECT COUNT(distinct id_person)
        FROM staff where id_person NOT IN
        (SELECT distinct id_person
        FROM staff INNER JOIN offline_clients oc on staff.id_person = oc.id_waiter
        GROUP BY id_person
        HAVING count(id_person) >1));
        return quantity;
    END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION is_in_online_order(id integer, name_dish varchar(100)) RETURNS BOOLEAN AS $$
    DECLARE
      is_in boolean := false;
    BEGIN
        is_in := (select count(*) from (select * from online_orders where id_client = id and dish_name = name_dish) as t1);
        RETURN is_in;
    END;
$$ LANGUAGE plpgsql;
