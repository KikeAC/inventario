<?php
/* @var $this ResguardoController */
/* @var $model Resguardo */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'id_res'); ?>
		<?php echo $form->textField($model,'id_res'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'id_mob'); ?>
		<?php echo $form->textField($model,'id_mob'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'id_usuario1'); ?>
		<?php echo $form->textField($model,'id_usuario1'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'id_usuario2'); ?>
		<?php echo $form->textField($model,'id_usuario2'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'fecha'); ?>
		<?php echo $form->textField($model,'fecha'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->