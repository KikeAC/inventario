<?php
/* @var $this MandodirController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Mandodirs',
);

$this->menu=array(
	array('label'=>'Create Mandodir', 'url'=>array('create')),
	array('label'=>'Manage Mandodir', 'url'=>array('admin')),
);
?>

<h1>Mandodirs</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
