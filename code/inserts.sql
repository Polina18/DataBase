INSERT INTO coffe_house VALUES (0, 'ул. Габричевского, 36', '10/10/2012 17:30', '12/12/9999 17:30');
INSERT INTO coffe_house VALUES (1, 'Большой Демидовский переулок, 4', '10/08/2020 17:30', '12/12/9999 17:30');
INSERT INTO coffe_house VALUES (2, 'ул. Верхняя Масловка, 12', '10/10/2012 17:30', '10/10/2014 17:30');
INSERT INTO coffe_house VALUES (3, 'Красноворотский проезд, 9', '10/12/2019 17:30', '12/12/9999 17:30');
INSERT INTO coffe_house VALUES (4, 'Краснобогатырская ул., 4', '10/12/2019 17:30', '12/12/9999 17:30');
INSERT INTO coffe_house VALUES (5, 'Большой Демидовский переулок, 4', '10/08/2020 17:30', '12/12/9999 17:30');
INSERT INTO coffe_house VALUES (6, 'ул. Верхняя Масловка, 12', '10/10/2012 17:30', '10/10/2014 17:30');
INSERT INTO coffe_house VALUES (7, 'Красноворотский проезд, 9', '10/12/2019 17:30', '12/12/9999 17:30');
INSERT INTO coffe_house VALUES (8, 'Краснобогатырская ул., 4', '10/12/2019 17:30', '12/12/9999 17:30');
INSERT INTO coffe_house VALUES (9, 'Футбольная ул., 15', '10/12/2019 17:30', '12/12/9999 17:30');

INSERT INTO dishes VALUES ('Айс-кофе', 270);
INSERT INTO dishes VALUES ('Эспрессо', 170);
INSERT INTO dishes VALUES ('Раф кофе', 290);
INSERT INTO dishes VALUES ('Латте классический', 290);
INSERT INTO dishes VALUES ('Омлет с сыром и томатами', 250);
INSERT INTO dishes VALUES ('Блинчики с маком', 300);
INSERT INTO dishes VALUES ('Блинчики со сгущенным молоком', 190);
INSERT INTO dishes VALUES ('Блинчики с сыром и ветчиной', 230);
INSERT INTO dishes VALUES ('Бургер', 250);
INSERT INTO dishes VALUES ('Куриный суп с лапшой', 250);
INSERT INTO dishes VALUES ('Борщ с говядиной', 330);
INSERT INTO dishes VALUES ('Оливье с курицей', 290);
INSERT INTO dishes VALUES ('Салат Греческий', 390);
INSERT INTO dishes VALUES ('Паста Карбонара', 350);
INSERT INTO dishes VALUES ('Бефстроганов', 450);
INSERT INTO dishes VALUES ('Мороженое ваниль', 110);
INSERT INTO dishes VALUES ('Маффин', 150);

INSERT INTO staff VALUES (0, 0, 'Официант', 40000, 'Марина Евгеньевна Шеменова', false);
INSERT INTO staff VALUES (1, 0, 'Официант', 40000, 'Ася Павловна Калинова', false);
INSERT INTO staff VALUES (2, 0, 'Официант', 40000, 'Артем  Васильевич Кивеев', false);
INSERT INTO staff VALUES (3, 0, 'Официант', 40000, 'Даниил Семенович Леонов', false);
INSERT INTO staff VALUES (4, 0, 'Официант', 40000, 'Екатерина Евгеньевна Иванова', false);
INSERT INTO staff VALUES (5, 1, 'Официант', 40000, 'Константин Васильевич Петров', false);
INSERT INTO staff VALUES (6, 1, 'Официант', 40000, 'Алексей Сергеевич Баранов', false);
INSERT INTO staff VALUES (7, 1, 'Курьер', 40000, 'Иван Николаевич Лимов', true);
INSERT INTO staff VALUES (8, 3, 'Курьер', 40000, 'Федор Александрович Фузеев', true);
INSERT INTO staff VALUES (9, 3, 'Курьер', 40000, 'Лев Игоревич Древин', true);
INSERT INTO staff VALUES (10, 0, 'Курьер', 40000, 'Олег Александрович Пехотов', false);
INSERT INTO staff VALUES (11, 0, 'Курьер', 40000, 'Елизавета Владимировна Скалина', false);
INSERT INTO staff VALUES (12, 0, 'Курьер', 40000, 'Ирина  Васильевна Тушина', false);
INSERT INTO staff VALUES (15, 3, 'Официант', 40000, 'Филипп Бедросович Киркоров', false);


INSERT INTO suppliers VALUES (0, 'Артур', 0);
INSERT INTO suppliers VALUES (1, 'Максим', 0);
INSERT INTO suppliers VALUES (2, 'Григорий', 8);
INSERT INTO suppliers VALUES (3, 'Игорь', 1);
INSERT INTO suppliers VALUES (4, 'Андрей', 3);
INSERT INTO suppliers VALUES (5, 'Николай', 3);
INSERT INTO suppliers VALUES (6, 'Артур', 4);
INSERT INTO suppliers VALUES (7, 'Алексей', 5);
INSERT INTO suppliers VALUES (8, 'Максим', 3);
INSERT INTO suppliers VALUES (9, 'Игорь', 7);
INSERT INTO suppliers VALUES (10, 'Максим', 9);


INSERT INTO online_clients VALUES (0, NULL, 870, 0);
INSERT INTO online_clients VALUES (1, 7, 270, 0);
INSERT INTO online_clients VALUES (2, NULL, 770, 0);
INSERT INTO online_clients VALUES (3, NULL, 450, 1);
INSERT INTO online_clients VALUES (4, 8, 350, 3);
INSERT INTO online_clients VALUES (5, NULL, 170, 3);
INSERT INTO online_clients VALUES (6, NULL, 450, 1);
INSERT INTO online_clients VALUES (7, 9, 350, 3);
INSERT INTO online_clients VALUES (8, NULL, 170, 3);


INSERT INTO offline_clients VALUES (0, 0, 670, 0);
INSERT INTO offline_clients VALUES (1, 1, 270, 0);
INSERT INTO offline_clients VALUES (2, 1, 770, 0);
INSERT INTO offline_clients VALUES (3, 2, 290, 0);
INSERT INTO offline_clients VALUES (4, 2, 290, 0);
INSERT INTO offline_clients VALUES (5, 2, 170, 0);
INSERT INTO offline_clients VALUES (6, 3, 290, 0);
INSERT INTO offline_clients VALUES (7, 4, 290, 0);
INSERT INTO offline_clients VALUES (8, 5, 170, 0);
INSERT INTO offline_clients VALUES (9, 5, 170, 1);
INSERT INTO offline_clients VALUES (10, 5, 170, 1);
INSERT INTO offline_clients VALUES (11, 5, 170, 3);



INSERT INTO online_orders VALUES (0, 'Айс-кофе', 1);
INSERT INTO online_orders VALUES (0, 'Бефстроганов', 1);
INSERT INTO online_orders VALUES (0, 'Маффин', 1);
INSERT INTO online_orders VALUES (1, 'Айс-кофе', 1);
INSERT INTO online_orders VALUES (2, 'Латте классический', 1);
INSERT INTO online_orders VALUES (2, 'Борщ с говядиной', 1);
INSERT INTO online_orders VALUES (2, 'Маффин', 1);
INSERT INTO online_orders VALUES (3, 'Бефстроганов', 1);
INSERT INTO online_orders VALUES (4, 'Паста Карбонара', 1);
INSERT INTO online_orders VALUES (5, 'Эспрессо', 1);
INSERT INTO online_orders VALUES (6, 'Бефстроганов', 1);
INSERT INTO online_orders VALUES (7, 'Паста Карбонара', 1);
INSERT INTO online_orders VALUES (8, 'Эспрессо', 1);


INSERT INTO offline_orders VALUES (0, 'Айс-кофе', 1);
INSERT INTO offline_orders VALUES (0, 'Бургер', 1);
INSERT INTO offline_orders VALUES (0, 'Маффин', 1);
INSERT INTO offline_orders VALUES (1, 'Айс-кофе', 1);
INSERT INTO offline_orders VALUES (2, 'Латте классический', 1);
INSERT INTO offline_orders VALUES (2, 'Борщ с говядиной', 1);
INSERT INTO offline_orders VALUES (2, 'Маффин', 1);
INSERT INTO offline_orders VALUES (3, 'Оливье с курицей', 1);
INSERT INTO offline_orders VALUES (4, 'Оливье с курицей', 1);
INSERT INTO offline_orders VALUES (5, 'Эспрессо', 1);
INSERT INTO offline_orders VALUES (6, 'Оливье с курицей', 1);
INSERT INTO offline_orders VALUES (7, 'Оливье с курицей', 1);
INSERT INTO offline_orders VALUES (8, 'Эспрессо', 1);
INSERT INTO offline_orders VALUES (9, 'Эспрессо', 1);
INSERT INTO offline_orders VALUES (10, 'Эспрессо', 1);
INSERT INTO offline_orders VALUES (11, 'Эспрессо', 1);
