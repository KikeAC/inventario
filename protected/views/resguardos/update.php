<?php
/* @var $this ResguardosController */
/* @var $model Resguardos */

$this->breadcrumbs=array(
	'Resguardoses'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Resguardos', 'url'=>array('index')),
	array('label'=>'Create Resguardos', 'url'=>array('create')),
	array('label'=>'View Resguardos', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Resguardos', 'url'=>array('admin')),
);
?>

<h1>Update Resguardos <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>