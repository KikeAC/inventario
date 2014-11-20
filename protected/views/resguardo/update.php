<?php
/* @var $this ResguardoController */
/* @var $model Resguardo */

$this->breadcrumbs=array(
	'Resguardos'=>array('index'),
	$model->id_res=>array('view','id'=>$model->id_res),
	'Update',
);

$this->menu=array(
	array('label'=>'List Resguardo', 'url'=>array('index')),
	array('label'=>'Create Resguardo', 'url'=>array('create')),
	array('label'=>'View Resguardo', 'url'=>array('view', 'id'=>$model->id_res)),
	array('label'=>'Manage Resguardo', 'url'=>array('admin')),
);
?>

<h1>Update Resguardo <?php echo $model->id_res; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>