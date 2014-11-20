<?php
/* @var $this DescripController */
/* @var $model Descrip */

$this->breadcrumbs=array(
	'Descrips'=>array('index'),
	$model->id_descrip=>array('view','id'=>$model->id_descrip),
	'Update',
);

$this->menu=array(
	array('label'=>'List Descrip', 'url'=>array('index')),
	array('label'=>'Create Descrip', 'url'=>array('create')),
	array('label'=>'View Descrip', 'url'=>array('view', 'id'=>$model->id_descrip)),
	array('label'=>'Manage Descrip', 'url'=>array('admin')),
);
?>

<h1>Update Descrip <?php echo $model->id_descrip; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>