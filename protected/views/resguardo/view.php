<?php
/* @var $this ResguardoController */
/* @var $model Resguardo */

$this->breadcrumbs=array(
	'Resguardos'=>array('index'),
	$model->id_res,
);

$this->menu=array(
	array('label'=>'List Resguardo', 'url'=>array('index')),
	array('label'=>'Create Resguardo', 'url'=>array('create')),
	array('label'=>'Update Resguardo', 'url'=>array('update', 'id'=>$model->id_res)),
	array('label'=>'Delete Resguardo', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id_res),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Resguardo', 'url'=>array('admin')),
);
?>

<h1>View Resguardo #<?php echo $model->id_res; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id_res',
		'id_mob',
		'id_usuario1',
		'id_usuario2',
		'fecha',
	),
)); ?>
