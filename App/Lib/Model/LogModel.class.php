<?php

/**
 * Created by PhpStorm.
 * User: voke
 * Date: 2020/5/17
 * Time: 11:25
 */
class LogModel extends Model
{
    protected $tableName = 'logs';

    public function createByArray($data)
    {
        return $this->add($data);
    }


}