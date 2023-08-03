-- Создать файл my.sql, в котором должна создаваться таблица с информацией об одногруппниках. В таблице должно быть четыре поля: id, name, age, address. Все поля в таблице обязательны для заполнения.
-- Необходимо добавить 5-10 одногруппников в данную таблицу.
-- Необходимо написать запрос на получение имен всех одногруппников (только имен, без всего остального), которые живут в Москве и их возраст находится в диапазоне [18, 30) лет. 

-- Создание таблицы

CREATE TABLE classmate (
  Id INTEGER PRIMARY KEY,
  name    varchar(20) NOT NULL,
  age     varchar(50) NOT NULL,
  address varchar(50) NOT NULL
);

-- Вставка данных

INSERT INTO classmate VALUES (0001, 'Кирилл', '16', 'Космическая 15');
INSERT INTO classmate VALUES (0002, 'Иван', '9', 'Москва Магическая 69');
INSERT INTO classmate VALUES (0003, 'Евгений', '19', 'Москва Тихая 11');
INSERT INTO classmate VALUES (0004, 'Илькнур', '999', 'Кошачья 9');
INSERT INTO classmate VALUES (0005, 'Настя', '69', 'Ленина 45');

-- Выборка
SELECT name FROM classmate WHERE address like '%Москва%' and age >= 18 and age < 30;