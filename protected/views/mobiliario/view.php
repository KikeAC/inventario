<?php
/* @var $this MobiliarioController */
/* @var $model Mobiliario */

$this->breadcrumbs=array(
	'Mobiliarios'=>array('index'),
	$model->id_Mob,
);

$this->menu=array(
	array('label'=>'List Mobiliario', 'url'=>array('index')),
	array('label'=>'Create Mobiliario', 'url'=>array('create')),
	array('label'=>'Update Mobiliario', 'url'=>array('update', 'id'=>$model->id_Mob)),
	array('label'=>'Delete Mobiliario', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id_Mob),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Mobiliario', 'url'=>array('admin')),
);
?>

<h1>View Mobiliario #<?php echo $model->id_Mob; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id_Mob',
		'descripcion',
		'modelo',
		'numSerie',
		'caracteristicas',
		'estadoFisico',
		'marcas_id_Marca',
		'usuarios_Id_Usuario',
		'numInventario',
		'departamentos_id_depto',
		'resguardos_id',
		'foto',
	),
)); ?>
