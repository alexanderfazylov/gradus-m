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

        $vacancys = Vacancy::model()->findAll();
        $this->render('about', array('vacancys' => $vacancys));
    }

    public function actionUpdateVacancy($id)
    {
        if (isset($_POST['Vacancy'])) {
            $vacancy = Vacancy::model()->findByPk($id);
            $vacancy->attributes = $_POST['Vacancy'];
            if ($vacancy->save()) {
                echo json_encode(array('status' => 'succses'));
            }
        }

    }

    public function actionAddCharge()
    {
        if (isset($_POST['Charge'])) {

            $charge = new Charge();
            $charge->attributes = $_POST['Charge'];
            if ($charge->save()) {
                echo json_encode(array('status' => 'succses'));
            }
        }
    }

    public function actionAddRequirements()
    {

        if (isset($_POST['Requirements'])) {

            $requirements = new Requirements();
            $requirements->attributes = $_POST['Requirements'];

            if ($requirements->save()) {
                echo json_encode(array('status' => 'succses'));
            }
        }
    }

    public function actionDeleteRequirements($id)
    {
        Requirements::model()->deleteByPk($id);
        echo json_encode(array('status' => 'succses'));
    }

    public function actionDeleteCharge($id)
    {
        Charge::model()->deleteByPk($id);
        echo json_encode(array('status' => 'succses'));
    }

    public function actionDeleteVacancy($id)
    {
        Charge::model()->deleteAllByAttributes(array('vacancy_id' => $id));
        Requirements::model()->deleteAllByAttributes(array('vacancy_id' => $id));
        Vacancy::model()->deleteByPk($id);
        echo json_encode(array('status' => 'succses'));
    }

    public function actionProducts()
    {
        $model = array();
        $this->render('products', array('model' => $model));
    }

    public function actionWorks()
    {
        $tags = Tag::model()->findAll();
        $portfolios = Portfolio::model()->findAll();

        $this->render('works', array('tags' => $tags, 'portfolios' => $portfolios));
    }

    public function actionCreateVacancy()
    {
        if (isset($_POST['Vacancy'])) {
            $model = new Vacancy();
            $model->attributes = $_POST['Vacancy'];
            if ($model->save()) {
                echo json_encode(array('status' => 'succses'));
            }
        }
    }

    public function actionSaveTag()
    {
        if (isset($_POST['Tag'])) {
            $model = new Tag();
            $model->attributes = $_POST['Tag'];
            if ($model->save()) {
                echo json_encode(array('status' => 'succses'));
            } else {
                echo json_encode(array('status' => 'error', 'text' => $model->getErrors()));
            }
        }
    }

    public function actionSavePortfolio()
    {
        if (isset($_POST['Portfolio'])) {
            $model = new Portfolio();
            $model->attributes = $_POST['Portfolio'];
            if ($model->save()) {
                echo json_encode(array('status' => 'succses'));
            } else {
                echo json_encode(array('status' => 'error', 'text' => $model->getErrors()));
            }
        }
    }


    public function actionDownloadFile($type)
    {
        if ($type = 1) {
            $logo = 1; //true
        } else {
            $logo = 0; //false
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