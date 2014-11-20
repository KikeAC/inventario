<?php

/**
 * This is the model class for table "mobiliario".
 *
 * The followings are the available columns in table 'mobiliario':
 * @property integer $id_Mob
 * @property string $descripcion
 * @property string $modelo
 * @property string $numSerie
 * @property string $caracteristicas
 * @property string $estadoFisico
 * @property integer $marcas_id_Marca
 * @property integer $usuarios_Id_Usuario
 * @property string $numInventario
 * @property integer $departamentos_id_depto
 * @property integer $resguardos_id
 * @property string $foto
 *
 * The followings are the available model relations:
 * @property Marcas $marcasIdMarca
 * @property Usuarios $usuariosIdUsuario
 * @property Departamentos $departamentosIdDepto
 * @property Resguardos $resguardos
 */
class Mobiliario extends CActiveRecord
{
	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'mobiliario';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('descripcion, modelo, numSerie, caracteristicas, estadoFisico, marcas_id_Marca, usuarios_Id_Usuario, departamentos_id_depto, resguardos_id', 'required'),
			array('marcas_id_Marca, usuarios_Id_Usuario, departamentos_id_depto, resguardos_id', 'numerical', 'integerOnly'=>true),
			array('descripcion, caracteristicas', 'length', 'max'=>256),
			array('modelo', 'length', 'max'=>50),
			array('numSerie', 'length', 'max'=>128),
			array('estadoFisico', 'length', 'max'=>8),
			array('numInventario', 'length', 'max'=>45),
			array('foto', 'length', 'max'=>100),
			// The following rule is used by search().
			// @todo Please remove those attributes that should not be searched.
			array('id_Mob, descripcion, modelo, numSerie, caracteristicas, estadoFisico, marcas_id_Marca, usuarios_Id_Usuario, numInventario, departamentos_id_depto, resguardos_id, foto', 'safe', 'on'=>'search'),
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
			'marcasIdMarca' => array(self::BELONGS_TO, 'Marcas', 'marcas_id_Marca'),
			'usuariosIdUsuario' => array(self::BELONGS_TO, 'Usuarios', 'usuarios_Id_Usuario'),
			'departamentosIdDepto' => array(self::BELONGS_TO, 'Departamentos', 'departamentos_id_depto'),
			'resguardos' => array(self::BELONGS_TO, 'Resguardos', 'resguardos_id'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id_Mob' => 'Id Mob',
			'descripcion' => 'Descripcion',
			'modelo' => 'Modelo',
			'numSerie' => 'Num Serie',
			'caracteristicas' => 'Caracteristicas',
			'estadoFisico' => 'Estado Fisico',
			'marcas_id_Marca' => 'Marcas Id Marca',
			'usuarios_Id_Usuario' => 'Usuarios Id Usuario',
			'numInventario' => 'Num Inventario',
			'departamentos_id_depto' => 'Departamentos Id Depto',
			'resguardos_id' => 'Resguardos',
			'foto' => 'Foto',
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

		$criteria->compare('id_Mob',$this->id_Mob);
		$criteria->compare('descripcion',$this->descripcion,true);
		$criteria->compare('modelo',$this->modelo,true);
		$criteria->compare('numSerie',$this->numSerie,true);
		$criteria->compare('caracteristicas',$this->caracteristicas,true);
		$criteria->compare('estadoFisico',$this->estadoFisico,true);
		$criteria->compare('marcas_id_Marca',$this->marcas_id_Marca);
		$criteria->compare('usuarios_Id_Usuario',$this->usuarios_Id_Usuario);
		$criteria->compare('numInventario',$this->numInventario,true);
		$criteria->compare('departamentos_id_depto',$this->departamentos_id_depto);
		$criteria->compare('resguardos_id',$this->resguardos_id);
		$criteria->compare('foto',$this->foto,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}

	/**
	 * Returns the static model of the specified AR class.
	 * Please note that you should have this exact method in all your CActiveRecord descendants!
	 * @param string $className active record class name.
	 * @return Mobiliario the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}
}
