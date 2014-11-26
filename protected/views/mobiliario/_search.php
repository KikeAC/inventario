<?php
/* @var $this MobiliarioController */
/* @var $model Mobiliario */
/* @var $form CActiveForm */
?>

<div class="wide form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<div class="row">
		<?php echo $form->label($model,'id_Mob'); ?>
		<?php echo $form->textField($model,'id_Mob'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'descripcion'); ?>
		<?php echo $form->textField($model,'descripcion',array('size'=>60,'maxlength'=>256)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'modelo'); ?>
		<?php echo $form->textField($model,'modelo',array('size'=>50,'maxlength'=>50)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'numSerie'); ?>
		<?php echo $form->textField($model,'numSerie',array('size'=>60,'maxlength'=>128)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'estadoFisico'); ?>
		<?php echo $form->textField($model,'estadoFisico',array('size'=>8,'maxlength'=>8)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'marcas_id_Marca'); ?>
		<?php echo $form->textField($model,'marcas_id_Marca'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'usuarios_Id_Usuario'); ?>
		<?php echo $form->textField($model,'usuarios_Id_Usuario'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'numInventario'); ?>
		<?php echo $form->textField($model,'numInventario',array('size'=>45,'maxlength'=>45)); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'departamentos_id_depto'); ?>
		<?php echo $form->textField($model,'departamentos_id_depto'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'resguardos_id'); ?>
		<?php echo $form->textField($model,'resguardos_id'); ?>
	</div>

	<div class="row">
		<?php echo $form->label($model,'foto'); ?>
		<?php echo $form->textField($model,'foto',array('size'=>60,'maxlength'=>100)); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton('Search'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- search-form -->