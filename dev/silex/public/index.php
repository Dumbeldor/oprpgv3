<?php
// public/index.php

require_once __DIR__.'/../vendor/autoload.php';

use Symfony\Component\HttpFoundation\Request;

$app = new Silex\Application;

// definitions
$app->get('/', function()
{
    return '<form method="post" action="/">Enter your name: <input type="text" name="name" /><input type="submit" value="Submit" /></form>';
});

$app->post('/', function(Request $request)
{
    $name = $request->get('name');
    return "Hello! Welcome " . $name . "!";
});

$app->run();
