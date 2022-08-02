<?php
declare(strict_types=1);

class DashboardController extends BackendController
{

    public function indexAction()
    {
        $cn = count(News::find());
        $cv = count(Video::find());
        $cc = count(Category::find());
        $ct = count(Type::find());

        $news = News::find([
            'order'      => 'created DESC',
            'limit'      => 6,
        ]);
        $news = News::normalizeBulk($news);

        $count = [
            'news' => $cn,
            'video' => $cv,
            'category' => $cc,
            'type' => $ct,
        ];
        
        $this->view->news_list = $news;
        $this->view->count = $count;
        $this->view->pick("backend/dashboard/index");
    }

}

