<?php

require_once('functions.php');
require_once('data.php');



$content = include_template('main.php', ['projects' => $projects, 'tasks' => $tasks]);

$layout = include_template('layout.php', [
    'content' => $content,
    'user' => 'Константин',
    'title' => 'Главная - Дела в порядке'
]);

echo $layout;
