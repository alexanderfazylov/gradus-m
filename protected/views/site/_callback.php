<?php
/* @var $this CallbackController */
/* @var $model Callback */
/* @var $form CActiveForm */
?>

<div class="form">

    <?php $form = $this->beginWidget('CActiveForm', array(
        'id' => 'form-callback',
        'enableAjaxValidation' => false,
        'action' => "/site/callback",
        'method' => "POST",
    )); ?>

    <div class="row">
        <div class="left-cell">
            <?php echo $form->labelEx($model, 'name'); ?>
        </div>
        <div class="right-cell">
            <?php echo $form->textField($model, 'name'); ?>
        </div>

    </div>
    <div class="row">
        <div class="left-cell">
            <?php echo $form->labelEx($model, 'call_time'); ?>
        </div>
        <div class="right-cell">
            <?php echo $form->textField($model, 'call_time'); ?>
        </div>
    </div>
    <div class="row">

        <div class="left-cell">
            <?php echo $form->labelEx($model, 'phone'); ?>
        </div>
        <div class="right-cell">
            <?php echo $form->textField($model, 'phone'); ?>
        </div>

    </div>
    <div class="row">
        <div class="left-cell">
            <?php echo $form->labelEx($model, 'comment'); ?>
        </div>
        <div class="right-cell">
            <?php echo $form->textArea($model, 'comment'); ?>
        </div>

    </div>
    <div class="row">
        <div class="left-cell"></div>
        <div class="right-cell">
            <div class="captcha-warap">
                <?php $this->widget('CCaptcha') ?>
            </div>
            <div class="captcha-input">
                <span>Введите текст с картинки</span>
                <?php echo CHtml::activeTextField($model, 'verifyCode') ?>
            </div>
            <div class="anchor"></div>
        </div>
    </div>
    <div class="row ">
        <div class="left-cell">

        </div>
        <div class="right-cell">
            <button id="callback" type="button"><!--Заказать звонок--></button>
        </div>
    </div>

    <?php $this->endWidget(); ?>

</div><!-- form -->