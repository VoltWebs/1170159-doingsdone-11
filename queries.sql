INSERT INTO users (name, email, password, data) VALUES
('Bob', 'bob@domain.com', 'Qwerty123_', '2019-11-11 18:51:00'),
('Mike', 'mike@domain.com', '123_Qwerty123_', '2019-10-11 19:51:00');

INSERT INTO projects (id_user, name) VALUES
(1,'Входящие'),
(2,'Учеба'),
(1,'Работа'),
(2,'Домашние дела'),
(2,'Авто');

INSERT INTO tasks (id_project, name, file, add_time, end_time, status) VALUES
(3, 'Собеседование в IT компании', NULL, '2019-06-11', '2019-07-11', 0),
(3, 'Выполнить тестовое задание', NULL, '2019-06-14', '2019-07-11', 0),
(2, 'Сделать задание первого раздела', NULL, '2019-10-11', '2019-12-21', 1),
(1, 'Встреча с другом', NULL, '2019-11-02', '2019-12-22', 0),
(4, 'Купить корм для кота', NULL, '2019-11-03', '2019-11-15', 0),
(4, 'Заказать пиццу', NULL, '2019-11-04', '2019-11-25', 0);

SELECT id, name FROM projects WHERE id_user = 1;

SELECT id, name FROM tasks WHERE id_project = 3;

UPDATE tasks SET status = 1 WHERE id = 5;

UPDATE tasks SET name = 'Заказать суши' WHERE id = 6;
