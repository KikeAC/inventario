<?php
/* @var $this MandodirController */
/* @var $model Mandodir */

$this->breadcrumbs=array(
	'Mandodirs'=>array('index'),
	$model->id_director=>array('view','id'=>$model->id_director),
	'Update',
);

$this->menu=array(
	array('label'=>'List Mandodir', 'url'=>array('index')),
	array('label'=>'Create Mandodir', 'url'=>array('create')),
	array('label'=>'View Mandodir', 'url'=>array('view', 'id'=>$model->id_director)),
	array('label'=>'Manage Mandodir', 'url'=>array('admin')),
);
?>

<h1>Update Mandodir <?php echo $model->id_director; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>