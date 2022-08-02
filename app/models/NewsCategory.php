<?php

class NewsCategory extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     */
    public $id_news;

    /**
     *
     * @var integer
     */
    public $id_category;

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("otowerks");
        $this->setSource("news_category");

        $this->belongsTo('id_category', Category::class, 'id', ['alias' => 'Categories']);
        $this->belongsTo('id_news', News::class, 'id', ['alias' => 'News']);
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return NewsCategory[]|NewsCategory|\Phalcon\Mvc\Model\ResultSetInterface
     */
    public static function find($parameters = null): \Phalcon\Mvc\Model\ResultsetInterface
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return NewsCategory|\Phalcon\Mvc\Model\ResultInterface|\Phalcon\Mvc\ModelInterface|null
     */
    public static function findFirst($parameters = null): ?\Phalcon\Mvc\ModelInterface
    {
        return parent::findFirst($parameters);
    }

    //------------ CRUD

    public function assyncNews($data, $id)
    {
        foreach ($data['category'] as $cid) {
            $ctg = new NewsCategory();
            $ctg->id_news = $id;
            $ctg->id_category = $cid;
            $ctg->save();
        }
    }

}
