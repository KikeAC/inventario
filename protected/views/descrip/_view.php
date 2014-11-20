<?php
/* @var $this DescripController */
/* @var $data Descrip */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_descrip')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_descrip), array('view', 'id'=>$data->id_descrip)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('descrip')); ?>:</b>
	<?php echo CHtml::encode($data->descrip); ?>
	<br />


</div>