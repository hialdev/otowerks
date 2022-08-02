<?php
declare(strict_types=1);

class BannerController extends BackendController
{

    public function indexAction()
    {
        $this->view->pick('backend/banner/index');
    }

    public function addAction()
    {
        $this->view->pick('backend/banner/add');
    }

    public function updateAction()
    {
        $this->view->pick('backend/banner/edit');
    }

    public function editAction()
    {
        $this->view->pick('backend/banner/edit');
    }
}

