<?php
declare(strict_types=1);

use Phalcon\Mvc\Controller;
use Phalcon\Flash\Session;

class BackendController extends Controller
{

    public function activate()
    {
        $urlNow = $_GET['_url'];
        $urlNow = explode('/',$urlNow);
        $active = $urlNow[2];
        return $active;
    }

    public function ago($date)
    {
        $now = date_create(); // waktu sekarang
        $diff  = date_diff($date, $now );

        return $diff;
    }
    public function initialize()
    {
        $this->view->activate = $this->activate();
        
        $audit = count(News::find("code_status = 'audit'"));
        $publish = count(News::find("code_status = 'publish'"));
        $wait = count(News::find("code_status = 'wait'"));
        $reject = count(News::find("code_status = 'reject'"));

        $stat = ['all' => count(News::find()) ,'audit' => $audit, 'publish' => $publish, 'wait' => $wait, 'reject' => $reject];
        $this->view->newsStat = $stat;
    }

    public static function slugify($text)
    {
        // Latinize
        $cyrillic = array('А', 'Б', 'В', 'Г', 'Д', 'Е', 'Ж', 'З', 'И', 'Й', 'К', 'Л', 'М', 'Н', 'О', 'П', 'Р', 'С', 'Т', 'У', 'Ф', 'Х', 'Ц', 'Ч', 'Ш', 'Щ', 'Ъ', 'Ь', 'Ю', 'Я', 'а', 'б', 'в', 'г', 'д', 'е', 'ж', 'з', 'и', 'й', 'к', 'л', 'м', 'н', 'о', 'п', 'р', 'с', 'т', 'у', 'ф', 'х', 'ц', 'ч', 'ш', 'щ', 'ъ', 'ь', 'ю', 'я');
        $latin    = array('A', 'B', 'V', 'G', 'D', 'E', 'J', 'Z', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'R', 'S', 'T', 'U', 'F', 'H', 'C', 'Ch', 'Sh', 'Sht', 'Y', 'I', 'U', 'Ja', 'a', 'b', 'v', 'g', 'd', 'e', 'j', 'z', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'r', 's', 't', 'u', 'f', 'h', 'c', 'ch', 'sh', 'sht', 'y', 'i', 'u', 'ja');                
        $latinized = str_replace($cyrillic, $latin, $text);

        // Unaccent
        $unaccent = strtr($latinized, 'ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõöøùúûüýþÿ', 'AAAAAAACEEEEIIIIDNOOOOOOUUUUYTsaaaaaaaceeeeiiiienoooooouuuuyty');                

        // Urlize
        $urlized = trim(strtolower(preg_replace('/[^A-Z^a-z^0-9^\/]+/', '-', preg_replace('/([a-z\d])([A-Z])/','\1-\2', preg_replace('/([A-Z]+)([A-Z][a-z])/','\1-\2', preg_replace('/::/', '/',$unaccent))))));

        return str_replace(array('_','/'), array('-',''), $urlized);        
    }

    //Upload Files
    public function uploadFile($name,$model)
    {
        $this->view->disable();
        $this->deleteFile($model->image);

        $upFiles = $this->request->getUploadedFiles();
        foreach ($upFiles as $upFile)
        {
            //$upFile->getKey();
            $fileType = $upFile->getRealType();
            $fileSize = $upFile->getSize();
            $filePath = "$name/".$model->id_user.'/'.date('y').'/'.date('m').'/'.date('d').'/'.md5(time().$upFile->getName()).'.'.$upFile->getExtension();
            //$fileInfo = pathinfo($upFile->getName());
            //var_dump($filePath);dd();
            
            if (!$this->saveUploadedFile($upFile, $filePath))
            {
                $this->flash->error("File gagal disimpan.");
                //return $this->response->redirect("/garage/$name");
            }
        }
        
        $model->image = $filePath;
        if ($model->save()) {
            $this->flash->success("File berhasil disimpan.");
        }else{
            $this->flash->error("Gagal mengupload dan menambahkan file.");
        }
                
        return $this->response->redirect("/garage/$name");
    }

    protected function deleteFile ($filename)
    {
        $filePath = $this->config->filePath.$filename;

        if (file_exists($filePath))
            return unlink($filePath);

        return false;
    }

    protected function saveUploadedFile ($fileObject, $filename)
    {
        if ($fileObject instanceof Phalcon\Http\Request\File)
        {
            $filePath = $this->config->filePath.$filename;
            //var_dump($filePath);dd();
            $basedir = dirname($filePath);
            
            if (!file_exists($basedir)) mkdir ($basedir,0775,true);
            
            $allowed = array('gif', 'png', 'jpg', 'jpeg', 'zip', 'pdf');

            if (in_array($fileObject->getExtension(),$allowed)) {
                if ($fileObject->moveTo($filePath))
                {
                    return true;
                }else{
                    $this->flash->error("File $filePath tidak dapat diupload.");
                }
            }else{
                $this->flash->error("File extension tidak didukung.");
                return false;
            }
        }

        return false;
    }

}
