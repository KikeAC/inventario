<?php
/* @var $this MobiliarioController */
/* @var $model Mobiliario */

$this->breadcrumbs=array(
	'Mobiliarios'=>array('index'),
	$model->id_Mob=>array('view','id'=>$model->id_Mob),
	'Update',
);

$this->menu=array(
	array('label'=>'List Mobiliario', 'url'=>array('index')),
	array('label'=>'Create Mobiliario', 'url'=>array('create')),
	array('label'=>'View Mobiliario', 'url'=>array('view', 'id'=>$model->id_Mob)),
	array('label'=>'Manage Mobiliario', 'url'=>array('admin')),
);
?>

<h1>Update Mobiliario <?php echo $model->id_Mob; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>