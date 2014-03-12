<?php

/**
 * This is the model class for table "{{callback}}".
 *
 * The followings are the available columns in table '{{callback}}':
 * @property integer $id
 * @property string $name
 * @property string $call_time
 * @property string $phone
 * @property string $comment
 * @property string $created
 */
class Callback extends CActiveRecord
{
    public $verifyCode;

    /**
     * @return string the associated database table name
     */
    public function tableName()
    {
        return '{{callback}}';
    }

    /**
     * @return array validation rules for model attributes.
     */
    public function rules()
    {
        // NOTE: you should only define rules for those attributes that
        // will receive user inputs.
        return array(
            array('phone, verifyCode', 'required'),
            array('name, call_time, phone', 'length', 'max' => 255),
            array('comment, created', 'safe'),
            // The following rule is used by search().
            // @todo Please remove those attributes that should not be searched.
            array('id, name, call_time, phone, comment, created', 'safe', 'on' => 'search'),
            array(
                'verifyCode',
                'captcha',
                'allowEmpty' => CCaptcha::checkRequirements(),
            ),
        );
    }

    /**
     * @return array relational rules.
     */
    public function relations()
    {
        // NOTE: you may need to adjust the relation name and the related
        // class name for the relations automatically generated below.
        return array();
    }

    /**
     * @return array customized attribute labels (name=>label)
     */
    public function attributeLabels()
    {
        return array(
            'id' => 'ID',
            'name' => 'Как к вам обращаться?',
            'call_time' => 'Когда вам лучше звонить?',
            'phone' => 'Ваш номер телефона',
            'comment' => 'Комементарий',
            'verifyCode' => 'Код проверки',
            'created' => 'Created',
        );
    }

    /**
     * Retrieves a list of models based on the current search/filter conditions.
     *
     * Typical usecase:
     * - Initialize the model fields with values from filter form.
     * - Execute this method to get CActiveDataProvider instance which will filter
     * models according to data in model fields.
     * - Pass data provider to CGridView, CListView or any similar widget.
     *
     * @return CActiveDataProvider the data provider that can return the models
     * based on the search/filter conditions.
     */
    public function search()
    {
        // @todo Please modify the following code to remove attributes that should not be searched.

        $criteria = new CDbCriteria;

        $criteria->compare('id', $this->id);
        $criteria->compare('name', $this->name, true);
        $criteria->compare('call_time', $this->call_time, true);
        $criteria->compare('phone', $this->phone, true);
        $criteria->compare('comment', $this->comment, true);
        $criteria->compare('created', $this->created, true);

        return new CActiveDataProvider($this, array(
            'criteria' => $criteria,
        ));
    }

    /**
     * Returns the static model of the specified AR class.
     * Please note that you should have this exact method in all your CActiveRecord descendants!
     * @param string $className active record class name.
     * @return Callback the static model class
     */
    public static function model($className = __CLASS__)
    {
        return parent::model($className);
    }


    public function sendMail()
    {
        $mail_config = Yii::app()->params['smtp_params'];
        $email = $mail_config['eventer'];

        $mailer = Yii::createComponent('application.extensions.mailer.EMailer');
        $mailer->SMTPAuth = TRUE;
        $mailer->IsSMTP();
        $mailer->Host = $mail_config['host']; //gmail.com
        $mailer->Username = $mail_config['user']; //user@gmail.com
        $mailer->Password = $mail_config['password']; //mypassword
        $mailer->From = $mail_config['user']; //user@gmail.com
        $mailer->AddAddress($email);
        $mailer->Subject = 'Заказан обратный звонок';
        $mailer->FromName = 'Ваш сайт';
        $mailer->setPathViews('application.views.email');
        $mailer->getView('callback', array('model' => $this));
        $mailer->Send();
        return true;
    }
}
