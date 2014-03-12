<?php

class Controller extends SBaseController
{

    public $callback;
    public $layout = 'column1';
    public $menu = array();
    public $breadcrumbs = array();

    public function init()
    {
        $this->contacts = Contacts::contactsHelper();
        $this->menu = MyHelper::menu();
        $this->callback = new Callback;

        $cs = Yii::app()->clientScript;
        $cs->registerCssFile($this->createUrl('/css/main.css'));
        $cs->registerCssFile($this->createUrl('/css/bootstrap-modal.css'));
        $cs->registerCssFile($this->createUrl('/css/bootstrap-modal-bs3patch.css'));
        $cs->registerCoreScript('jquery');
        $cs->registerScriptFile($this->createUrl('/js/jquery.history.js'));
        $cs->registerScriptFile($this->createUrl('/js/bootstrap-modal.js'));
        $cs->registerScriptFile($this->createUrl('/js/bootstrap-modalmanager.js'));
        $cs->registerScriptFile($this->createUrl('/js/action.js'));
    }

}