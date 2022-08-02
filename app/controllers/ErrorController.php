<?php
declare(strict_types=1);

class ErrorController extends \Phalcon\Mvc\Controller
{

    public function notFoundAction()
    {
        $this->view->prevUrl = $_SERVER['HTTP_REFERER'];
        $this->view->pick('misc/404');
    }

    public function permissionAction()
    {
        $this->view->prevUrl = $_SERVER['HTTP_REFERER'];
        $this->view->pick('misc/503');
    }

}

