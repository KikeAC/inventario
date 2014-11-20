<?php
/* @var $this ResguardoController */
/* @var $model Resguardo */

$this->breadcrumbs=array(
	'Resguardos'=>array('index'),
	'Manage',
);

$this->menu=array(
	array('label'=>'List Resguardo', 'url'=>array('index')),
	array('label'=>'Create Resguardo', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#resguardo-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h1>Manage Resguardos</h1>

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
	'id'=>'resguardo-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		'id_res',
		'id_mob',
		'id_usuario1',
		'id_usuario2',
		'fecha',
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
