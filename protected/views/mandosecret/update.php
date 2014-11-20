<?php
/* @var $this MandosecretController */
/* @var $model Mandosecret */

$this->breadcrumbs=array(
	'Mandosecrets'=>array('index'),
	$model->id_secret=>array('view','id'=>$model->id_secret),
	'Update',
);

$this->menu=array(
	array('label'=>'List Mandosecret', 'url'=>array('index')),
	array('label'=>'Create Mandosecret', 'url'=>array('create')),
	array('label'=>'View Mandosecret', 'url'=>array('view', 'id'=>$model->id_secret)),
	array('label'=>'Manage Mandosecret', 'url'=>array('admin')),
);
?>

<h1>Update Mandosecret <?php echo $model->id_secret; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>