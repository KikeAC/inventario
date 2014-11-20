<?php
/* @var $this PermisosController */
/* @var $data Permisos */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('permiso')); ?>:</b>
	<?php echo CHtml::encode($data->permiso); ?>
	<br />


</div>