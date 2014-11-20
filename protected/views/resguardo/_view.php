<?php
/* @var $this ResguardoController */
/* @var $data Resguardo */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_res')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_res), array('view', 'id'=>$data->id_res)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_mob')); ?>:</b>
	<?php echo CHtml::encode($data->id_mob); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_usuario1')); ?>:</b>
	<?php echo CHtml::encode($data->id_usuario1); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_usuario2')); ?>:</b>
	<?php echo CHtml::encode($data->id_usuario2); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('fecha')); ?>:</b>
	<?php echo CHtml::encode($data->fecha); ?>
	<br />


</div>