/*
Когда клиент уходит, нужно очистить сначала список заказанных блюд от блюд,
заказанных данным клиентом, а после уже удалить самого клиента из списка активных
 */
 CREATE OR REPLACE FUNCTION correct_offline_deleting() RETURNS TRIGGER AS $$
    BEGIN
        DELETE FROM offline_orders WHERE offline_orders.id_client = old.id_client;
        RETURN old;
    END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER offline_clients_deleting
    BEFORE DELETE ON offline_clients
    FOR EACH ROW
    EXECUTE FUNCTION correct_offline_deleting();


/*
Для онлайн-клиентов предусматривается та же логика работы, однако
тут перед удалением нужно будет отпустить курьера, попеняв флажок is_busy
на false
 */
 CREATE OR REPLACE FUNCTION correct_online_deleting() RETURNS TRIGGER AS $$
    BEGIN
        DELETE FROM online_orders WHERE online_orders.id_client = old.id_client;
        UPDATE staff SET is_busy = false WHERE staff.id_person = old.id_courier;
        RETURN old;
    END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER online_clients_deleting
    BEFORE DELETE ON online_clients
    FOR EACH ROW
    EXECUTE FUNCTION correct_online_deleting();
