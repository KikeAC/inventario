<?php
/* @var $this ResguardosController */
/* @var $model Resguardos */

$this->breadcrumbs=array(
	'Resguardoses'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Resguardos', 'url'=>array('index')),
	array('label'=>'Manage Resguardos', 'url'=>array('admin')),
);
?>

<h1>Create Resguardos</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>