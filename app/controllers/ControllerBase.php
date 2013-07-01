<?php

use Phalcon\Mvc\Controller;

class ControllerBase extends Controller
{

    protected function initialize() {
        Phalcon\Tag::prependTitle ("Welcome - ");
        $this->view->setVar("mainid", "page");
    }
}
