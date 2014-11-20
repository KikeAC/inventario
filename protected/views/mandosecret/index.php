<?php
/* @var $this MandosecretController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Mandosecrets',
);

$this->menu=array(
	array('label'=>'Create Mandosecret', 'url'=>array('create')),
	array('label'=>'Manage Mandosecret', 'url'=>array('admin')),
);
?>

<h1>Mandosecrets</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
