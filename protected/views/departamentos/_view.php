<?php
/* @var $this DepartamentosController */
/* @var $data Departamentos */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_depto')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_depto), array('view', 'id'=>$data->id_depto)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('depto')); ?>:</b>
	<?php echo CHtml::encode($data->depto); ?>
	<br />


</div>