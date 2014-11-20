<?php
/* @var $this MandodirController */
/* @var $model Mandodir */

$this->breadcrumbs=array(
	'Mandodirs'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Mandodir', 'url'=>array('index')),
	array('label'=>'Manage Mandodir', 'url'=>array('admin')),
);
?>

<h1>Create Mandodir</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>