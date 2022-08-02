<?php

class News extends ModelBase
{

    /**
     *
     * @var integer
     */
    public $id;

    /**
     *
     * @var string
     */
    public $title;

    /**
     *
     * @var string
     */
    public $image;

    /**
     *
     * @var string
     */
    public $excerpt;

    /**
     *
     * @var string
     */
    public $content;

    /**
     *
     * @var string
     */
    public $link_yt;

    /**
     *
     * @var string
     */
    public $duration;

    /**
     *
     * @var string
     */
    public $code_status;

    /**
     *
     * @var integer
     */
    public $id_type;

    /**
     *
     * @var integer
     */
    public $id_user;

    /**
     *
     * @var integer
     */
    public $count_view;

    /**
     *
     * @var integer
     */
    public $featured;

    /**
     *
     * @var string
     */
    public $metaTitle;

    /**
     *
     * @var string
     */
    public $metaDesc;

    /**
     *
     * @var string
     */
    public $slug;

    /**
     *
     * @var string
     */
    public $reject_note;

    /**
     *
     * @var string
     */
    public $created;

    /**
     *
     * @var string
     */
    public $modified;

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("otowerks");
        $this->setSource("news");

        $this->hasOne(
            'id_type',
            Type::class,
            'id',
            [
                'alias'    => 'type',
                'reusable' => true,
            ]
        );

        $this->hasOne(
            'id_user',
            User::class,
            'id',
            [
                'alias'    => 'user',
                'reusable' => true,
            ]
        );

        $this->hasMany('id', NewsCategory::class, 'id_news', ['alias' => 'NewsCategory']);
        $this->hasManyToMany(
            'id',
            NewsCategory::class,
            'id_news',
            'id_category',
            Category::class,
            'id',
            ['alias' => 'Categories']
        );

        $this->hasOne(
            'id',
            NewsHeading::class,
            'id_news',
            [
                'alias'    => 'news',
                'reusable' => true,
            ]
        );
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return News[]|News|\Phalcon\Mvc\Model\ResultSetInterface
     */
    public static function find($parameters = null): \Phalcon\Mvc\Model\ResultsetInterface
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return News|\Phalcon\Mvc\Model\ResultInterface|\Phalcon\Mvc\ModelInterface|null
     */
    public static function findFirst($parameters = null): ?\Phalcon\Mvc\ModelInterface
    {
        return parent::findFirst($parameters);
    }

    public function findSlug($slug)
    {
        $data = News::findFirst("slug = '$slug'");
        return $data;
    }

    public function normalizing()
    {
        return self::normalize($this);
    }

    public static function normalize($data)
    {
        
        return  [
            'id' => $data->id,
            'title' => $data->title,
            'slug' => $data->slug,
            'image' => $data->imgUrl(),
            'excerpt' => $data->excerpt,
            'content' => $data->content,
            'yt_id' => $data->yt_id,
            'writer' => $data->user,
            'count_view' => $data->count_view,
            'reject_note' => $data->reject_note,
            'featured' => $data->featured,
            'duration' => $data->duration,
            'code_status' => $data->code_status,
            'categories' => $data->categories,
            'type' => $data->type,
            'user' => $data->user,
            'created' => parent::tanggal($data->created),
            'modified' => $data->modified,
        ];
    }

    public function normalizeBulk($set)
    {
        $data = [];
        foreach ($set as $s) {
            $data[] = $s->normalizing();
        }

        return $data;
    }

    public function imgUrl()
    {
        if (empty($this->config))
            $this->config = $this->getDi()->getConfig();
        
        $filePath = $this->config->filePath.$this->image;
        $basedir = dirname($filePath);
        if (!file_exists($basedir)) {
            return "https://www.guardanthealthamea.com/wp-content/uploads/2019/09/no-image.jpg";
        }
        return $this->config->application->baseUri. 'files/'.$this->image;

    }

    //------------- CRUD

}
