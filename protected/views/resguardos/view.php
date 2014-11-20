<?php
/* @var $this ResguardosController */
/* @var $model Resguardos */

$this->breadcrumbs=array(
	'Resguardoses'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List Resguardos', 'url'=>array('index')),
	array('label'=>'Create Resguardos', 'url'=>array('create')),
	array('label'=>'Update Resguardos', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Resguardos', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Resguardos', 'url'=>array('admin')),
);
?>

<h1>View Resguardos #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'folio',
		'fecha',
		'usuarios_id',
	),
)); ?>
