<?php
/* @var $this MobiliarioController */
/* @var $model Mobiliario */

$this->breadcrumbs=array(
	'Mobiliarios'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Mobiliario', 'url'=>array('index')),
	array('label'=>'Create Mobiliario', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#mobiliario-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Mobiliarios</h1>

<p>
You may optionally enter a comparison operator (<b>&lt;</b>, <b>&lt;=</b>, <b>&gt;</b>, <b>&gt;=</b>, <b>&lt;&gt;</b>
or <b>=</b>) at the beginning of each of your search values to specify how the comparison should be done.
</p>

<?php echo CHtml::link('Advanced Search','#',array('class'=>'search-button')); ?>
<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'mobiliario-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id_Mob',
		'descripcion',
		'modelo',
		'numSerie',
		'estadoFisico',
                'usuarios_Id_Usuario',
		/*
		'marcas_id_Marca',
		'usuarios_Id_Usuario',
		'numInventario',
		'departamentos_id_depto',
		'resguardos_id',
		'foto',
		*/
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
