<?php

class Video extends ModelBase
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
    public $excerpt;

    /**
     *
     * @var string
     */
    public $description;

    /**
     *
     * @var string
     */
    public $yt_id;

    /**
     *
     * @var string
     */
    public $duration;

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
     * @var integer
     */
    public $publish;

    /**
     *
     * @var string
     */
    public $slug;

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
        $this->setSource("video");
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Video[]|Video|\Phalcon\Mvc\Model\ResultSetInterface
     */
    public static function find($parameters = null): \Phalcon\Mvc\Model\ResultsetInterface
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Video|\Phalcon\Mvc\Model\ResultInterface|\Phalcon\Mvc\ModelInterface|null
     */
    public static function findFirst($parameters = null): ?\Phalcon\Mvc\ModelInterface
    {
        return parent::findFirst($parameters);
    }

}
