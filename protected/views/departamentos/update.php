<?php
/* @var $this DepartamentosController */
/* @var $model Departamentos */

$this->breadcrumbs=array(
	'Departamentoses'=>array('index'),
	$model->id_depto=>array('view','id'=>$model->id_depto),
	'Update',
);

$this->menu=array(
	array('label'=>'List Departamentos', 'url'=>array('index')),
	array('label'=>'Create Departamentos', 'url'=>array('create')),
	array('label'=>'View Departamentos', 'url'=>array('view', 'id'=>$model->id_depto)),
	array('label'=>'Manage Departamentos', 'url'=>array('admin')),
);
?>

<h1>Update Departamentos <?php echo $model->id_depto; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>