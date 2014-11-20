<?php
/* @var $this DescripController */
/* @var $model Descrip */

$this->breadcrumbs=array(
	'Descrips'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Descrip', 'url'=>array('index')),
	array('label'=>'Manage Descrip', 'url'=>array('admin')),
);
?>

<h1>Create Descrip</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>