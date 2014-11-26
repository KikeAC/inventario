<?php
/* @var $this MobiliarioController */
/* @var $model Mobiliario */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'mobiliario-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'descripcion'); ?>
		<?php echo $form->textField($model,'descripcion',array('size'=>60,'maxlength'=>256)); ?>
		<?php echo $form->error($model,'descripcion'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'modelo'); ?>
		<?php echo $form->textField($model,'modelo',array('size'=>50,'maxlength'=>50)); ?>
		<?php echo $form->error($model,'modelo'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'numSerie'); ?>
		<?php echo $form->textField($model,'numSerie',array('size'=>60,'maxlength'=>128)); ?>
		<?php echo $form->error($model,'numSerie'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'estadoFisico'); ?>
		<?php echo $form->textField($model,'estadoFisico',array('size'=>8,'maxlength'=>8)); ?>
		<?php echo $form->error($model,'estadoFisico'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'marcas_id_Marca'); ?>
		<?php echo $form->textField($model,'marcas_id_Marca'); ?>
		<?php echo $form->error($model,'marcas_id_Marca'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'usuarios_Id_Usuario'); ?>
		<?php echo $form->textField($model,'usuarios_Id_Usuario'); ?>
		<?php echo $form->error($model,'usuarios_Id_Usuario'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'numInventario'); ?>
		<?php echo $form->textField($model,'numInventario',array('size'=>45,'maxlength'=>45)); ?>
		<?php echo $form->error($model,'numInventario'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'departamentos_id_depto'); ?>
		<?php echo $form->textField($model,'departamentos_id_depto'); ?>
		<?php echo $form->error($model,'departamentos_id_depto'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'resguardos_id'); ?>
		<?php echo $form->textField($model,'resguardos_id'); ?>
		<?php echo $form->error($model,'resguardos_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'foto'); ?>
		<?php echo $form->textField($model,'foto',array('size'=>60,'maxlength'=>100)); ?>
		<?php echo $form->error($model,'foto'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->