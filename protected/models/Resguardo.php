<?php

/**
 * This is the model class for table "resguardo".
 *
 * The followings are the available columns in table 'resguardo':
 * @property integer $id_res
 * @property integer $id_mob
 * @property integer $id_usuario1
 * @property integer $id_usuario2
 * @property string $fecha
 */
class Resguardo extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'resguardo';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('id_mob, id_usuario1, id_usuario2, fecha', 'required'),
			array('id_mob, id_usuario1, id_usuario2', 'numerical', 'integerOnly'=>true),
                        array('id_mob, id_usuario1, id_usuario2','ECompositeUniqueValidator'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id_res, id_mob, id_usuario1, id_usuario2, fecha', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id_res' => 'Numero de Resguardo',
			'id_mob' => 'Numero de Serie Mobiliario',
			'id_usuario1' => 'Usuario Resguardante',
			'id_usuario2' => 'Usuario Resguardante Inmediato Anterior',
			'fecha' => 'Fecha',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 *
	 * Typical usecase:
	 * - Initialize the model fields with values from filter form.
	 * - Execute this method to get CActiveDataProvider instance which will filter
	 * models according to data in model fields.
	 * - Pass data provider to CGridView, CListView or any similar widget.
	 *
	 * @return CActiveDataProvider the data provider that can return the models
	 * based on the search/filter conditions.
	 */
	public function search()
	{
		// @todo Please modify the following code to remove attributes that should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id_res',$this->id_res);
		$criteria->compare('id_mob',$this->id_mob);
		$criteria->compare('id_usuario1',$this->id_usuario1);
		$criteria->compare('id_usuario2',$this->id_usuario2);
		$criteria->compare('fecha',$this->fecha,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Resguardo the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
