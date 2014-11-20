<?php
/* @var $this MobiliarioController */
/* @var $model Mobiliario */

$this->breadcrumbs=array(
	'Mobiliarios'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Mobiliario', 'url'=>array('index')),
	array('label'=>'Manage Mobiliario', 'url'=>array('admin')),
);
?>

<h1>Create Mobiliario</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>