<?php
declare(strict_types=1);

class GarageController extends \Phalcon\Mvc\Controller
{

    public function indexAction()
    { 
        return $this->response->redirect('/garage/dashboard');
        $this->view->disabled();
    }

    public function loginAction()
    {
        $this->view->pick('backend/garage/login');
    }

    public function registerAction()
    {
        $this->view->pick('backend/garage/register');
    }

}

