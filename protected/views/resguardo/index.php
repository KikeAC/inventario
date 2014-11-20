<?php
/* @var $this ResguardoController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Resguardos',
);

$this->menu=array(
	array('label'=>'Create Resguardo', 'url'=>array('create')),
	array('label'=>'Manage Resguardo', 'url'=>array('admin')),
);
?>

<h1>Resguardos</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
