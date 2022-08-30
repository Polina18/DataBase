import psycopg2

with psycopg2.connect(database='org_mipt_atp_db', user='postgres', password='postgres', host='docker', port=49154) as conn:
    cur = conn.cursor()
    
    # Вставка в staff новых работников
    cur.execute("INSERT INTO staff VALUES (16, 4, 'Официант', 40000, 'Тест Тестов Тестович', false);")
    cur.execute("INSERT INTO staff VALUES (17, 4, 'Повар', 45000, 'Иван Васильевич Веселов', false);")
    
    
    # Выведем таблицу staff, проверим, что они действительно добавились
    cur.execute("SELECT id_person, person_name FROM STAFF;") 
    
    list_staff  = cur.fetchall()
    first_person = (16, 'Тест Тестов Тестович')
    second_person = (17, 'Иван Васильевич Веселов')
    
    print('Добавился первый? ', first_person in list_staff)
    print('Добавился второй? ', second_person in list_staff)
    
    # Проверим запуск функций
    cur.execute("SELECT is_in_online_order(10, 'Каша');") 
    
    if not cur.fetchall()[0][0]:
         print("Первый отработал верно")
    else:
        print("Первый отработал неверно")
    
    
    cur.execute("SELECT is_in_online_order(6, 'Бефстроганов');")
    
    if cur.fetchall()[0][0]:
         print("Второй отработал верно")
    else:
        print("Второй отработал неверно")

