<?php
/* @var $this MobiliarioController */
/* @var $model Mobiliario */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'mobiliario-create-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// See class documentation of CActiveForm for details on this,
	// you need to use the performAjaxValidation()-method described there.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'Descripcion'); ?>
		<?php echo $form->textField($model,'Descripcion'); ?>
		<?php echo $form->error($model,'Descripcion'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'Marca'); ?>
		<?php echo $form->textField($model,'Marca'); ?>
		<?php echo $form->error($model,'Marca'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'Modelo'); ?>
		<?php echo $form->textField($model,'Modelo'); ?>
		<?php echo $form->error($model,'Modelo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'NumSerie'); ?>
		<?php echo $form->textField($model,'NumSerie'); ?>
		<?php echo $form->error($model,'NumSerie'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'Caracter'); ?>
		<?php echo $form->textField($model,'Caracter'); ?>
		<?php echo $form->error($model,'Caracter'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'NumResguardo'); ?>
		<?php echo $form->textField($model,'NumResguardo'); ?>
		<?php echo $form->error($model,'NumResguardo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'EstadoFisico'); ?>
		<?php echo $form->textField($model,'EstadoFisico'); ?>
		<?php echo $form->error($model,'EstadoFisico'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'Comentarios'); ?>
		<?php echo $form->textField($model,'Comentarios'); ?>
		<?php echo $form->error($model,'Comentarios'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'id_Usuario'); ?>
		<?php echo $form->textField($model,'id_Usuario'); ?>
		<?php echo $form->error($model,'id_Usuario'); ?>
	</div>


	<div class="row buttons">
		<?php echo CHtml::submitButton('Submit'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->