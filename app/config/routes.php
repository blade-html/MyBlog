<?php
$router = new Phalcon\Mvc\Router(false);

$routerArray = array(
    '/'         =>  array(
                        'controller' => 'index',
                        'action' => 'index'
                    ),
    '/publicsh' =>  array(
                        'controller' => 'article',
                        'action' => 'add'
                    ),
    '/help'     =>  array(
                        'controller' => 'help',
                        'action' => 'index'
                    ),
);

foreach($routerArray as $k => $v) {
    $router->add($k, $v);
}

return $router;
