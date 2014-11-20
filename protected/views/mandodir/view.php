<?php
/* @var $this MandodirController */
/* @var $model Mandodir */

$this->breadcrumbs=array(
	'Mandodirs'=>array('index'),
	$model->id_director,
);

$this->menu=array(
	array('label'=>'List Mandodir', 'url'=>array('index')),
	array('label'=>'Create Mandodir', 'url'=>array('create')),
	array('label'=>'Update Mandodir', 'url'=>array('update', 'id'=>$model->id_director)),
	array('label'=>'Delete Mandodir', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id_director),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Mandodir', 'url'=>array('admin')),
);
?>

<h1>View Mandodir #<?php echo $model->id_director; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id_director',
		'nombre',
		'fecha',
	),
)); ?>
