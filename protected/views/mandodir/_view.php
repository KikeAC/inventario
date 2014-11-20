<?php
/* @var $this MandodirController */
/* @var $data Mandodir */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_director')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_director), array('view', 'id'=>$data->id_director)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nombre')); ?>:</b>
	<?php echo CHtml::encode($data->nombre); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('fecha')); ?>:</b>
	<?php echo CHtml::encode($data->fecha); ?>
	<br />


</div>