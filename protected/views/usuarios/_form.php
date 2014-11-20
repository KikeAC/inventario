<?php
/* @var $this UsuariosController */
/* @var $model Usuarios */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'usuarios-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'Nombre'); ?>
		<?php echo $form->textField($model,'Nombre',array('size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'Nombre'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'apellido_pat'); ?>
		<?php echo $form->textField($model,'apellido_pat',array('size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'apellido_pat'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'apellido_mat'); ?>
		<?php echo $form->textField($model,'apellido_mat',array('size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'apellido_mat'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'departamentos_id_depto'); ?>
		<?php echo $form->textField($model,'departamentos_id_depto'); ?>
		<?php echo $form->error($model,'departamentos_id_depto'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'username'); ?>
		<?php echo $form->textField($model,'username',array('size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'username'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'pass'); ?>
		<?php echo $form->passwordField($model,'pass',array('size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'pass'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'lastlogin'); ?>
		<?php echo $form->textField($model,'lastlogin'); ?>
		<?php echo $form->error($model,'lastlogin'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'permisos_id'); ?>
		<?php echo $form->textField($model,'permisos_id'); ?>
		<?php echo $form->error($model,'permisos_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'puestos_id'); ?>
		<?php echo $form->textField($model,'puestos_id'); ?>
		<?php echo $form->error($model,'puestos_id'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->