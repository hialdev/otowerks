<?php

class ModelBase extends \Phalcon\Mvc\Model{

    public function tanggal($date)
    {
        $date = date('l, d/m/y H:m',strtotime($date));
        return $date;
    }

    public static function generateId ()
    {
        $microtime = microtime(true) * 10000;
        return date('ymdh').substr($microtime, -6);
    }

}