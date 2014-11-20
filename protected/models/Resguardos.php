<?php

/**
 * This is the model class for table "resguardos".
 *
 * The followings are the available columns in table 'resguardos':
 * @property integer $id
 * @property string $folio
 * @property string $fecha
 * @property integer $usuarios_id
 *
 * The followings are the available model relations:
 * @property Mobiliario[] $mobiliarios
 * @property Usuarios $usuarios
 */
class Resguardos extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'resguardos';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('usuarios_id', 'required'),
			array('usuarios_id', 'numerical', 'integerOnly'=>true),
			array('folio', 'length', 'max'=>45),
			array('fecha', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, folio, fecha, usuarios_id', 'safe', 'on'=>'search'),
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
			'mobiliarios' => array(self::HAS_MANY, 'Mobiliario', 'resguardos_id'),
			'usuarios' => array(self::BELONGS_TO, 'Usuarios', 'usuarios_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'folio' => 'Folio',
			'fecha' => 'Fecha',
			'usuarios_id' => 'Usuarios',
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

		$criteria->compare('id',$this->id);
		$criteria->compare('folio',$this->folio,true);
		$criteria->compare('fecha',$this->fecha,true);
		$criteria->compare('usuarios_id',$this->usuarios_id);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Resguardos the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
