<?php
/* @var $this MarcasController */
/* @var $data Marcas */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_Marca')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_Marca), array('view', 'id'=>$data->id_Marca)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('Marca')); ?>:</b>
	<?php echo CHtml::encode($data->Marca); ?>
	<br />


</div>