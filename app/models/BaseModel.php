<?php

class BaseModel extends \Phalcon\Mvc\Model
{
    protected $_prefix = "bai_";

    protected function getSource() {
        return $this->_prefix . strtolower(get_class($this));
    }

}
