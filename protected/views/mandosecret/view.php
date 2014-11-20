<?php
/* @var $this MandosecretController */
/* @var $model Mandosecret */

$this->breadcrumbs=array(
	'Mandosecrets'=>array('index'),
	$model->id_secret,
);

$this->menu=array(
	array('label'=>'List Mandosecret', 'url'=>array('index')),
	array('label'=>'Create Mandosecret', 'url'=>array('create')),
	array('label'=>'Update Mandosecret', 'url'=>array('update', 'id'=>$model->id_secret)),
	array('label'=>'Delete Mandosecret', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id_secret),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Mandosecret', 'url'=>array('admin')),
);
?>

<h1>View Mandosecret #<?php echo $model->id_secret; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id_secret',
		'nombre',
		'fecha',
	),
)); ?>
