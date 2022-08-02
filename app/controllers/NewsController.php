<?php
use Phalcon\Utils;
use Phalcon\Paginator\Adapter\NativeArray as Paginate;

class NewsController extends BackendController
{

    public function viewAction($slug)
    {
        $news = News::findSlug($slug);
        $news = $news->normalizing();

        $this->view->news = $news;
        $this->view->pick('backend/news/view');
    }

    public function auditAction($id)
    {
        $news = News::findFirst("id = '$id'");
        $news->code_status = "audit";
        $news->save();
        $news = $news->normalizing();

        $this->view->news = $news;
        $this->view->pick('backend/news/audit');
    }

    public function indexAction()
    {
        $currentPage = $this->request->getQuery('page', 'int');
        $search = $this->request->getQuery('q', 'string','');
        $status = $this->request->getQuery('status', 'string','');
        $data = News::find([
            'conditions' => 'code_status LIKE :s: AND '.
                            'title LIKE :q:',
            'bind'       => [
                's' => '%'.$status.'%',
                'q' => '%'.$search.'%',
            ],
            'order'      => 'created DESC',
        ]);
        //var_dump($data);dd();
        $data = News::normalizeBulk($data);
        $paginator   = new Paginate(
            [
                "data"       => $data,
                "limit"      => 12,
                "page"       => $currentPage,
            ]
        );

        $news = $paginator->paginate();
        
        $query = [
            'status' => $status,
            'search' => $search,
        ];

        $this->view->query = $query;
        $this->view->news_list = $news;
        $this->view->pick("backend/news/index");
    }

    public function offerAction()
    {
        $currentPage = $this->request->getQuery('page', 'int');
        $search = $this->request->getQuery('q', 'string','');
        $status = $this->request->getQuery('status', 'string','');
        $quser = $this->request->getQuery('uid', 'int','');
        $users = User::find();
 
        if ($status === null || $status === "") {
            $st = ['wait','audit','publish','reject'];
        }else{
            $st = [$status]; 
        }

        $data = News::find([
            'conditions' => 'code_status IN ({s:array}) AND '.
                            'id_user LIKE :u: AND '.
                            'title LIKE :q:',
            'bind'       => [
                'u' => '%'.$quser.'%',
                's' => $st,
                'q' => '%'.$search.'%',
            ],
            'order'      => 'modified DESC',
        ]);
        //var_dump($data);dd();
        $data = News::normalizeBulk($data);
        $paginator   = new Paginate(
            [
                "data"       => $data,
                "limit"      => 12,
                "page"       => $currentPage,
            ]
        );

        $news = $paginator->paginate();
        
        $query = [
            'status' => $status,
            'search' => $search,
            'user' => $quser,
        ];

        $this->view->users = $users;
        $this->view->query = $query;
        $this->view->news_list = $news;
        $this->view->pick("backend/news/offer");
    }

    public function addAction()
    {
        $bread = [
            'url' => 'news',
            'name' => 'News',
            'active' => 'Add New',
        ];

        $types = Type::find();
        $categories = Category::find();
        
        $this->view->types = $types;
        $this->view->category = $categories;
        $this->view->bread = $bread;
        $this->view->pick("backend/news/add");
    }

    public function createAction()
    {
        try {
            $data = $this->request->getPost();    
            $news = new News;
            $news->id = $news->generateId();
            $news->title = $data['title'];
            $news->excerpt = $data['excerpt'];
            $news->content = $data['content'];
            $news->image = "ngasal";
            $news->yt_id = $data['yt_id'];
            $news->duration = $data['duration'];
            $news->code_status = 'draft';
            $news->id_type = $data['type'];
            $news->id_user = 12345678;
            $news->slug = parent::slugify($data['title']);
            if(isset($data['meta_title'])) $news->meta_title = $data['meta_title'];
            if(isset($data['meta_desc'])) $news->meta_desc = $data['meta_desc'];
            $news->created = date('Y-m-d H:i:s');
            $news->modified = date('Y-m-d H:i:s');
            $save = $news->save();
            
            foreach ($data['category'] as $cid) {
                $ctg = new NewsCategory();
                $ctg->id_news = $news->id;
                $ctg->id_category = $cid;
                $ctg->save();
            }
            
            if (false === $save) {
                $messages = $news->getMessages();
                foreach ($messages as $message) {
                    $this->flash->error($message . PHP_EOL);
                }
                return $this->response->redirect('/garage/news');
            } else {
                //upload image
                $up = $this->uploadFile('news',$news);

                $this->flash->success('Berhasil');
            }

        } catch (\Exception $e) {
            $this->flash->error($e->getMessage());
        }

    }

    public function editAction($id)
    {
        $data = News::findFirst($id);
        $bread = [
            'url' => 'news',
            'name' => 'News',
            'active' => 'Edit '.$news->title,
        ];
        $news = $data->normalizing();
        $types = Type::find();
        $categories = Category::find();
        
        $this->view->types = $types;
        $this->view->category = $categories;
        $this->view->bread = $bread;
        $this->view->news = $news;
        $this->view->pick("backend/news/edit");
    }

    public function updateAction($id)
    {
        try {
            $data = $this->request->getPost();
            $news = News::findFirst($id);
            $news->title = $data['title'];
            $news->excerpt = $data['excerpt'];
            $news->content = $data['content'];
            $news->yt_id = $data['yt_id'];
            $news->duration = $data['duration'];
            $news->id_type = $data['type'];
            $news->id_user = 12345678;
            $news->slug = parent::slugify($data['title']);
            if(isset($data['meta_title'])) $news->meta_title = $data['meta_title'];
            if(isset($data['meta_desc'])) $news->meta_desc = $data['meta_desc'];
            $news->modified = date('Y-m-d H:i:s');
            $save = $news->save();
            
            $cuy = [];
            $ctgs = NewsCategory::find("id_news = $id");
            foreach ($ctgs as $c) {
               $c->delete();
            }
            
            foreach ($data['category'] as $cid) {
                $ctg = new NewsCategory();
                $ctg->id_news = $news->id;
                $ctg->id_category = $cid;
                $ctg->save();
            }
            
            if (false === $save) {
                $messages = $news->getMessages();
                foreach ($messages as $message) {
                    $this->flash->error($message . PHP_EOL);
                }
                return $this->response->redirect('/garage/news');
            } else {
                //upload image
                if ($this->request->hasFiles())
                    $up = $this->uploadFile('news',$news);
                    
                $this->flash->success('Berhasil memperbarui berita');
                return $this->response->redirect('/garage/news');
            }

        } catch (\Exception $e) {
            $this->flash->error($e->getMessage());
        }
        $this->view->disabled();
    }

    public function deleteAction($id)
    {
        //$this->view->disabled();
        $news = News::findFirst("id = $id");
        $this->deleteFile($news->image);
        $news->delete();
        if ($news == false) {
            $this->flash->error($news->getMessage());
        }else{
            $this->flash->success("Berhasil menghapus berita");
        }
        return $this->response->redirect('/garage/news');
    }

    public function ajukanAction($id)
    {
        $news = News::findFirst("id = $id");
        $news->code_status = 'wait';
        $news->modified = date('Y-m-d H:i:s');
        $news->save();
        if ($news == false) {
            $this->flash->error($news->getMessage());
        }else{
            $this->flash->success("Berhasil mengajukan berita");
        }
        return $this->response->redirect('/garage/news');
    }

    public function publishAction($id)
    {
        $news = News::findFirst("id = $id");
        $news->code_status = 'publish';
        $news->modified = date('Y-m-d H:i:s');
        $news->save();
        if ($news == false) {
            $this->flash->error($news->getMessage());
        }else{
            $this->flash->success("Berhasil menerbitkan berita.");
        }
        return $this->response->redirect('/garage/news/offer');
    }

    public function tarikAction($id)
    {
        $news = News::findFirst("id = $id");
        $news->code_status = 'draft';
        $news->modified = date('Y-m-d H:i:s');
        $news->save();
        if ($news == false) {
            $this->flash->error($news->getMessage());
        }else{
            $this->flash->success("Berhasil menarik berita");
        }
        return $this->response->redirect('/garage/news');
    }

    public function rejectAction($id)
    {
        if (News::findFirst("id = $id")->code_status === "reject") {
            return $this->response->redirect('/garage/news/offer');
        }else{
            $news = News::findFirst("id = $id");

            if (true === $this->request->isPost()) {
                $alasan = $this->request->get('alasan');
                $news->code_status = 'reject';
                $news->reject_note = $alasan;
                $news->modified = date('Y-m-d H:i:s');
                $save = $news->save();

                if($save){
                    $this->flash->success("Berita telah ditolak, dengan alasan : $alasan");
                    return $this->response->redirect('/garage/news/offer');
                }else{
                    $this->flash->error($news->getMessage());
                    return $this->response->redirect('/garage/news/'.$id.'/reject');
                }
            }

            $this->view->news = $news->normalizing();
            $this->view->pick('backend/news/reject');
        }
    }

    public function priorityAction()
    {
        $news = News::find("code_status = 'publish'");
        $news = News::normalizeBulk($news);
        $hn = NewsHeadline::find();
        $hn = NewsHeadline::normalizeBulk($hn);
        $fn = NewsFeatured::find();
        $fn = NewsFeatured::normalizeBulk($fn);

        $this->view->headline = $hn;
        $this->view->featured = $fn;
        $this->view->news_list = $news;
        $this->view->pick('backend/news/priority');
    }

    public function priorityPostAction()
    {
        try {
            $data = $this->request->getPost();    
            //var_dump($data['form'] == 'headline');dd();
            if ($data['form'] == 'headline') {
                //kosongkan headline
                $hn = NewsHeadline::find();
                $hn->delete();

                //store headline baru
                foreach ($data['headline'] as $idnews) {
                    $headline = new NewsHeadline;
                    $headline->id_news = $idnews;
                    $headline->save();
                }

                if($headline){
                    $this->flash->success("Hooray... Berita utama telah diperbarui.");
                    return $this->response->redirect('/garage/news/priority');
                }else{
                    $this->flash->error($headline->getMessage());
                    return $this->response->redirect('/garage/news/priority');
                }
            }elseif ($data['form'] == 'featured'){
                //kosongkan featured
                $fn = NewsFeatured::find();
                $fn->delete();

                //store featured baru
                foreach ($data['featured'] as $idnews) {
                    $featured = new NewsFeatured;
                    $featured->id_news = $idnews;
                    $featured->save();
                }

                if($featured){
                    $this->flash->success("Hooray... Berita featured telah diperbarui.");
                    return $this->response->redirect('/garage/news/priority');
                }else{
                    $this->flash->error($featured->getMessage());
                    return $this->response->redirect('/garage/news/priority');
                }
            }else{
                $this->flash->error('Request tidak valid!!!');
                return $this->response->redirect('/garage/news/priority');
            }

        } catch (\Exception $e) {
            $this->flash->error($e->getMessage());
            return $this->response->redirect('/garage/news/priority');
        }

    }

}

