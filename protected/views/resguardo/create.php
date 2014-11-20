<?php
/* @var $this ResguardoController */
/* @var $model Resguardo */

$this->breadcrumbs=array(
	'Resguardos'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Resguardo', 'url'=>array('index')),
	array('label'=>'Manage Resguardo', 'url'=>array('admin')),
);
?>

<h1>Create Resguardo</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>