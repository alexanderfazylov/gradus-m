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
        <?php echo $form->labelEx($model, 'name'); ?>
        <?php echo $form->textField($model, 'name'); ?>
    </div>
    <div class="row">
        <?php echo $form->labelEx($model, 'call_time'); ?>
        <?php echo $form->textField($model, 'call_time'); ?>
    </div>
    <div class="row">
        <?php echo $form->labelEx($model, 'phone'); ?>
        <?php echo $form->textField($model, 'phone'); ?>
    </div>
    <div class="row">
        <?php echo $form->labelEx($model, 'comment'); ?>
        <?php echo $form->textArea($model, 'comment'); ?>
    </div>
    <div class="row">
        <?php echo CHtml::activeLabelEx($model, 'verifyCode') ?>
        <?php $this->widget('CCaptcha') ?>
        <?php echo CHtml::activeTextField($model, 'verifyCode') ?>
    </div>
    <div class="row buttons">
        <button id="callback" type="button">Заказать звонок</button>
    </div>

    <?php $this->endWidget(); ?>

</div><!-- form -->