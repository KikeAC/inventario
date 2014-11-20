<html>
    <h1> Hola Bienvenido a Yii Framework </h1>
    <h1> Sigueme en Tuiter <?php echo $twitter;?></h1>
    <?php foreach ($model as $data):?>
    <h1><?php echo $data->Id_Usuario ; echo "   " ; echo $data->Nombre ;echo "   ";echo $data->apellido_pat; echo " ";
 echo $data->apellido_mat?></h1>
    <?php endforeach;?>

</html>