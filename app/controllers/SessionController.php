<?php

class SessionController extends ControllerBase
{
    public function initialize() {
        $this->view->setTemplateAfter("main");
        Phalcon\Tag::setTitle("Previx");
        parent::initialize();
    }

    /**
      * 注册
      */
    public function registerAction()
    {
    }

    /**
      * 登录
      */
    public function loginAction()
    {
    }

    /**
      * 退出
      */
    public function logoutAction()
    {
    }
}