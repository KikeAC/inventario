<?php
/* @var $this DescripController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Descrips',
);

$this->menu=array(
	array('label'=>'Create Descrip', 'url'=>array('create')),
	array('label'=>'Manage Descrip', 'url'=>array('admin')),
);
?>

<h1>Descrips</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
