<?php
/* @var $this DescripController */
/* @var $model Descrip */

$this->breadcrumbs=array(
	'Descrips'=>array('index'),
	$model->id_descrip,
);

$this->menu=array(
	array('label'=>'List Descrip', 'url'=>array('index')),
	array('label'=>'Create Descrip', 'url'=>array('create')),
	array('label'=>'Update Descrip', 'url'=>array('update', 'id'=>$model->id_descrip)),
	array('label'=>'Delete Descrip', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id_descrip),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Descrip', 'url'=>array('admin')),
);
?>

<h1>View Descrip #<?php echo $model->id_descrip; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id_descrip',
		'descrip',
	),
)); ?>
