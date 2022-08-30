/*
 Одним из частых запросов на практике является поиск человека по ФИО, однако
 в силу того, что имена расположены хаотично, такой поиск может работать
 очень долго
 */
CREATE INDEX ON staff ((upper(person_name)));

/*
 По той же причине может понадобиться быстрый поиск по названию блюда
 */
CREATE INDEX ON dishes ((upper(dish_name)));
