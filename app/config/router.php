<?php

$router = $di->getRouter();

// Define your routes here
$router->setDefaults([
    'controller' => 'frontend',
    'action' => 'index'
]);

$router->add(
    '/:params',
    [
        'controller' => 'error',
        'action' => 'notFound',
    ]
);

$router->add(
    '/',
    [
        'controller' => 'frontend',
        'action' => 'index'
    ]
);

// Web / Frontend side
$router->add(
    '/news',
    [
        'controller' => 'frontend',
        'action'     => 'news',
    ]
);
$router->add(
    '/news/{slug}',
    [
        'controller' => 'frontend',
        'action'     => 'newsShow',
    ]
);
$router->add(
    '/video',
    [
        'controller' => 'frontend',
        'action'     => 'video',
    ]
);
$router->add(
    '/video/{slug}',
    [
        'controller' => 'frontend',
        'action'     => 'videoShow',
    ]
);
$router->add(
    '/penulis/{username}',
    [
        'controller' => 'frontend',
        'action'     => 'penulis',
    ]
);
$router->add(
    '/about',
    [
        'controller' => 'frontend',
        'action'     => 'about',
    ]
);
$router->add(
    '/contact',
    [
        'controller' => 'frontend',
        'action'     => 'contact',
    ]
);

//Admin ---------------------------------

$router->add(
    '/garage',
    [
        'controller' => 'garage',
        'action'     => 'index',
    ]
);

$router->add(
    '/garage/register',
    [
        'controller' => 'garage',
        'action'     => 'register',
    ]
);

$router->add(
    '/garage/login',
    [
        'controller' => 'garage',
        'action'     => 'login',
    ]
);

$router->add(
    '/garage/logout',
    [
        'controller' => 'garage',
        'action'     => 'logout',
    ]
);

$router->add(
    '/garage/dashboard',
    [
        'controller' => 'dashboard',
        'action'     => 'index',
    ]
);

$router->add(
    '/garage/banner',
    [
        'controller' => 'banner',
        'action'     => 'index',
    ]
);

$router->addPost(
    '/garage/banner/update',
    [
        'controller' => 'banner',
        'action'     => 'update',
    ]
);

// News
$router->add(
    '/garage/news',
    [
        'controller' => 'news',
        'action'     => 'index',
    ]
);

$router->add(
    '/garage/news/{slug}',
    [
        'controller' => 'news',
        'action'     => 'view',
    ]
);
$router->add(
    '/garage/news/{id}/publish',
    [
        'controller' => 'news',
        'action'     => 'publish',
    ]
);
$router->add(
    '/garage/news/{id}/audit',
    [
        'controller' => 'news',
        'action'     => 'audit',
    ]
);
$router->add(
    '/garage/news/{id}/reject',
    [
        'controller' => 'news',
        'action'     => 'reject',
    ]
);
$router->add(
    '/garage/news/offer',
    [
        'controller' => 'news',
        'action'     => 'offer',
    ]
);
$router->addGet(
    '/garage/news/add',
    [
        'controller' => 'news',
        'action'     => 'add',
    ]
);
$router->addPost(
    '/garage/news/add',
    [
        'controller' => 'news',
        'action'     => 'create',
    ]
);
$router->addGet(
    '/garage/news/priority',
    [
        'controller' => 'news',
        'action'     => 'priority',
    ]
);
$router->addPost(
    '/garage/news/priority',
    [
        'controller' => 'news',
        'action'     => 'priorityPost',
    ]
);
$router->addGet(
    '/garage/news/{id}/edit',
    [
        'controller' => 'news',
        'action'     => 'edit',
    ]
);
$router->addPost(
    '/garage/news/{id}/update',
    [
        'controller' => 'news',
        'action'     => 'update',
    ]
);
$router->add(
    '/garage/news/{id}/ajukan',
    [
        'controller' => 'news',
        'action'     => 'ajukan',
    ]
);
$router->add(
    '/garage/news/{id}/tarik',
    [
        'controller' => 'news',
        'action'     => 'tarik',
    ]
);
$router->add(
    '/garage/news/{id}/delete',
    [
        'controller' => 'news',
        'action'     => 'delete',
    ]
);

//Misc ---------------------------
$router->add(
    '/error/404',
    [
        'controller' => 'error',
        'action'     => 'notFound',
    ]
);
$router->add(
    '/error/503',
    [
        'controller' => 'error',
        'action'     => 'permission',
    ]
);
$router->handle($_SERVER['REQUEST_URI']);
