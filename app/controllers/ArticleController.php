<?php

class ArticleController extends ControllerBase
{
    public function initialize() {
        $this->view->setTemplateAfter("main");
        Phalcon\Tag::setTitle("Previx");
        parent::initialize();
    }

    /**
      * Article Lists
      */
    public function indexAction()
    {
        Phalcon\Tag::appendTitle("Article");
        echo "<h1>This is ArticleController</h1>";
    }

    /**
      * Article Add
      */
    public function addAction() {
    }

}

