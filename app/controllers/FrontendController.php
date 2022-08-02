<?php

class FrontendController extends \Phalcon\Mvc\Controller
{
    public function initialize()
    {
        $ctg = Category::find();
        $this->view->categorynav = $ctg;
    }

    public function activate()
    {
        if ($this->request->getQuery('c') !== '' || $this->request->getQuery('c') !== null) {
            $active = $this->request->getQuery('c','string');
        }else{
            $urlNow = $_GET['_url'];
            $urlNow = explode('/',$urlNow);
            $active = $urlNow[1];
        }
        return $active;
    }

    public function indexAction()
    {
        $hn = NewsHeadline::find();
        $hn = NewsHeadline::normalizeBulk($hn);
        $fn = NewsFeatured::find();
        $fn = NewsFeatured::normalizeBulk($fn);
        $news = News::find("code_status = 'publish'");
        $news = News::normalizeBulk($news);
        $np = News::find([
            'conditions' => "code_status = 'publish'",
            'order'      => 'count_view DESC',
            'limit'      => 6,
        ]);
        $np = News::normalizeBulk($np);

        $this->view->active = $this->activate();
        $this->view->popular = $np;
        $this->view->headline = $hn;
        $this->view->featured = $fn;
        $this->view->news_list = $news;
    }
    
    public function newsAction()
    {
        $this->view->active = $this->activate();
    }

    public function newsShowAction($slug)
    {
        $nc = News::findFirst("slug = '$slug'");
        $nc->count_view = $nc->count_view + 1;
        $nc->save();

        $news = News::findFirst("slug = '$slug'")->normalizing();

        $video = Video::find(['order' => 'created DESC', 'limit' => 4]);
        $newsmore = News::find(['order' => 'created DESC', 'limit' => 6]);
        $newsmore = News::normalizeBulk($newsmore);

        $this->view->active = $this->activate();
        $this->view->news = $news;
        $this->view->morenews = $newsmore;
        $this->view->lastvideo = $video;
        $this->view->pick('frontend/news-show');
    }

    public function videoAction()
    {
        $this->view->active = $this->activate();
    }

    public function videoShowAction($slug)
    {
        $this->view->active = $this->activate();
        $this->view->pick('frontend/video-show');
    }

    public function penulisAction()
    {
    }

    public function aboutAction()
    {
    }
    
    public function contactAction()
    {
    }

}

