<?php

class AdminController extends Controller
{

    public $layout = 'main';

    public function actionIndex()
    {
        $user = User::model()->findByPk(1);
        if (isset($_POST['User'])) {
            if (!empty($_POST['User']['username']) && !empty($_POST['User']['password'])) {
                $user->username = $_POST['User']['username'];
                $user->password = md5($_POST['User']['password']);
                $user->save(false);
                echo json_encode(array('status' => 'succses'));

            }
            die();
        }
        $this->render('index', array('user' => $user));
    }

    public function actionMain()
    {
        $contacts = Contacts::contactsHelper();
        if (isset($_POST['Contacts'])) {

            foreach ($_POST['Contacts'] as $attribute => $val) {
                $contacts = Contacts::model()->findByAttributes(array('name' => $attribute));
                $contacts->val = $val;
                $contacts->save();
            }
            echo json_encode(array('status' => 'succses'));
            die();
        }
        $this->render('main', array('contacts' => $contacts));
    }

    public function actionAbout()
    {
        $model = array();
        $this->render('about', array('model' => $model));
    }

    public function actionProducts()
    {
        $model = array();
        $this->render('products', array('model' => $model));
    }

    public function actionWorks()
    {
        $model = array();
        $this->render('works', array('model' => $model));
    }


    public function actionDownloadFile($type)
    {
        if ($type = 1) {
            $logo = 1;//true
        } else {
            $logo = 0;//false
        }

        $uf = DIRECTORY_SEPARATOR;
        $basePath = Yii::app()->basePath . "{$uf}..{$uf}uploads{$uf}";
        if (!file_exists($basePath))
            mkdir($basePath);

        $allowedExtensions = $array = array("png", "jpg", "jpeg", "gif");
        $sizeLimit = 50 * 1024 * 1024;
        $uploader = new qqFileUploader($allowedExtensions, $sizeLimit);
        $result = $uploader->handleUpload($basePath);


        if (!empty($result['error'])) {
            echo json_encode(array('status' => 'fail', 'error' => $result['error']));
            Yii::app()->end();
        }

        $file = array(
            'name' => $result['filename'],
            'orig_name' => $result['user_filename'],
            'size' => $result['size'],
            'ext' => $result['ext'],
            'logo' => $logo
        );

        $Uploadedfiles = new Uploadedfiles();
        $Uploadedfiles->attributes = $file;
        if (!$Uploadedfiles->save()) {
            echo json_encode(array('status' => 'fail', 'error' => 'Ошибка, сохранение не произошло 1'));
            Yii::app()->end();
        }

        $result['file_id'] = $Uploadedfiles->id;

//        $model = new Logo();
//        $model->uploads_id = $Uploadedfiles->id;
//        if (!$model->save()) {
//            echo json_encode(array('status' => 'fail', 'error' => var_dump($model->getErrors())));
//            Yii::app()->end();
//        }

        echo htmlspecialchars(json_encode($result), ENT_NOQUOTES);

    }

}