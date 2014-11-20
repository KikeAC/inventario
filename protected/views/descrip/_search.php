<?php
/* @var $this DescripController */
/* @var $model Descrip */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'id_descrip'); ?>
		<?php echo $form->textField($model,'id_descrip'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'descrip'); ?>
		<?php echo $form->textField($model,'descrip',array('size'=>60,'maxlength'=>128)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->