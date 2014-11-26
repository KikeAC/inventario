<?php
/* @var $this MobiliarioController */
/* @var $data Mobiliario */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_Mob')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_Mob), array('view', 'id'=>$data->id_Mob)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('descripcion')); ?>:</b>
	<?php echo CHtml::encode($data->descripcion); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('modelo')); ?>:</b>
	<?php echo CHtml::encode($data->modelo); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('numSerie')); ?>:</b>
	<?php echo CHtml::encode($data->numSerie); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('estadoFisico')); ?>:</b>
	<?php echo CHtml::encode($data->estadoFisico); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('marcas_id_Marca')); ?>:</b>
	<?php echo CHtml::encode($data->marcas_id_Marca); ?>
	<br />

	<?php /*
	<b><?php echo CHtml::encode($data->getAttributeLabel('usuarios_Id_Usuario')); ?>:</b>
	<?php echo CHtml::encode($data->usuarios_Id_Usuario); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('numInventario')); ?>:</b>
	<?php echo CHtml::encode($data->numInventario); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('departamentos_id_depto')); ?>:</b>
	<?php echo CHtml::encode($data->departamentos_id_depto); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('resguardos_id')); ?>:</b>
	<?php echo CHtml::encode($data->resguardos_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('foto')); ?>:</b>
	<?php echo CHtml::encode($data->foto); ?>
	<br />

	*/ ?>

</div>