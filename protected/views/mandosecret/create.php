<?php
/* @var $this MandosecretController */
/* @var $model Mandosecret */

$this->breadcrumbs=array(
	'Mandosecrets'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Mandosecret', 'url'=>array('index')),
	array('label'=>'Manage Mandosecret', 'url'=>array('admin')),
);
?>

<h1>Create Mandosecret</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>