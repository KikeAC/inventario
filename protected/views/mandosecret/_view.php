<?php
/* @var $this MandosecretController */
/* @var $data Mandosecret */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_secret')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_secret), array('view', 'id'=>$data->id_secret)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nombre')); ?>:</b>
	<?php echo CHtml::encode($data->nombre); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('fecha')); ?>:</b>
	<?php echo CHtml::encode($data->fecha); ?>
	<br />


</div>