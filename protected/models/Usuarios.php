<?php

/**
 * This is the model class for table "usuarios".
 *
 * The followings are the available columns in table 'usuarios':
 * @property integer $id
 * @property string $Nombre
 * @property string $apellido_pat
 * @property string $apellido_mat
 * @property integer $departamentos_id_depto
 * @property string $username
 * @property string $pass
 * @property string $lastlogin
 * @property integer $permisos_id
 * @property integer $puestos_id
 *
 * The followings are the available model relations:
 * @property Mobiliario[] $mobiliarios
 * @property Resguardos[] $resguardoses
 * @property Departamentos $departamentosIdDepto
 * @property Permisos $permisos
 * @property Puestos $puestos
 */
class Usuarios extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'usuarios';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('Nombre, apellido_pat, apellido_mat, departamentos_id_depto, username, permisos_id, puestos_id', 'required'),
			array('departamentos_id_depto, permisos_id, puestos_id', 'numerical', 'integerOnly'=>true),
			array('Nombre, apellido_pat, apellido_mat, username, pass', 'length', 'max'=>45),
			array('lastlogin', 'safe'),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id, Nombre, apellido_pat, apellido_mat, departamentos_id_depto, username, pass, lastlogin, permisos_id, puestos_id', 'safe', 'on'=>'search'),
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
			'mobiliarios' => array(self::HAS_MANY, 'Mobiliario', 'usuarios_Id_Usuario'),
			'resguardoses' => array(self::HAS_MANY, 'Resguardos', 'usuarios_id'),
			'departamentosIdDepto' => array(self::BELONGS_TO, 'Departamentos', 'departamentos_id_depto'),
			'permisos' => array(self::BELONGS_TO, 'Permisos', 'permisos_id'),
			'puestos' => array(self::BELONGS_TO, 'Puestos', 'puestos_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'Nombre' => 'Nombre',
			'apellido_pat' => 'Apellido Pat',
			'apellido_mat' => 'Apellido Mat',
			'departamentos_id_depto' => 'Departamentos Id Depto',
			'username' => 'Username',
			'pass' => 'Pass',
			'lastlogin' => 'Lastlogin',
			'permisos_id' => 'Permisos',
			'puestos_id' => 'Puestos',
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
		$criteria->compare('Nombre',$this->Nombre,true);
		$criteria->compare('apellido_pat',$this->apellido_pat,true);
		$criteria->compare('apellido_mat',$this->apellido_mat,true);
		$criteria->compare('departamentos_id_depto',$this->departamentos_id_depto);
		$criteria->compare('username',$this->username,true);
		$criteria->compare('pass',$this->pass,true);
		$criteria->compare('lastlogin',$this->lastlogin,true);
		$criteria->compare('permisos_id',$this->permisos_id);
		$criteria->compare('puestos_id',$this->puestos_id);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Usuarios the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
