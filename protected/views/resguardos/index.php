<?php
/* @var $this ResguardosController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Resguardoses',
);

$this->menu=array(
	array('label'=>'Create Resguardos', 'url'=>array('create')),
	array('label'=>'Manage Resguardos', 'url'=>array('admin')),
);
?>

<h1>Resguardoses</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
