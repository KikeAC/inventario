<?php
/* @var $this MobiliarioController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Mobiliarios',
);

$this->menu=array(
	array('label'=>'Create Mobiliario', 'url'=>array('create')),
	array('label'=>'Manage Mobiliario', 'url'=>array('admin')),
);
?>

<h1>Mobiliarios</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
