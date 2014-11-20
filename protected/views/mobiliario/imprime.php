<?php $contador=count($model); if ($model !== null):?>
<html>
<head>
<style>
 body {
    font-family: sans-serif;
    font-size: 10pt;
 }
 p { 
    margin: 1pt;
 
     
 }
 td { 
    vertical-align: top; 
 }
 .items td {
 border-left: 0.1mm solid #000000;
 border-right: 0.1mm solid #000000;
 
 }
 table thead td { 
 background-color: #EEEEEE;
 text-align: center;
 border: 0.1mm solid #000000;
 }
 #header
{   text-align: center;
    
}
#footer{
    text-align: center;
}
 .items td.blanktotal {
 background-color: #FFFFFF;
 border: 0mm none #000000;
 border-top: 0.1mm solid #000000;
 }
 .items td.totals {
 text-align: right;
 border: 0.8mm solid #000000;
 }
</style>
</head>
<body>
 
<!--mpdf
 <htmlpageheader name="myheader">
 <div id="header"> <img src="/Inventario/images/format_header.jpg" /></div>
 </htmlpageheader>
 
<htmlpagefooter name="myfooter">
 <div align = "left">Página {PAGENO} de {nb}</div>
 <div id="footer"> <img src="/Inventario/images/format_footer.jpg" /></div>
 
 </div>
 </htmlpagefooter>
 
<sethtmlpageheader name="myheader" value="on" show-this-page="1" />
 <sethtmlpagefooter name="myfooter" value="on" />
 mpdf-->

<div style="text-align: right"><b>Morelia, Michoacán a, </b><?php echo (date("d"))-1; ?> <?php echo date("M"); ?> <?php echo date("Y"); ?> </div>
<br>
<b>RESGUARDO DE MOBILIARIO Y EQUIPO DE OFICINA DE LA U.P.P 16 UR-07</b>
<br>
<br>
<b>AREA: ENLACE Y COMUNICACION</b>
<br>
<br>
<p align ="justify">Recibí en calidad de <b>RESGUARDANTE</b> por conducto de la Unidad de Análisis e Inteligencia y a través del<br>
Departamento de Estadistica y Sistemas los bienes que a continuación se describen:</p>
<br>
Descripción del bien:
<br>
<br>

 <table class="items" width="100%" style="font-size: 9pt; border-collapse: collapse;" cellpadding="5">
 <thead>
 <tr>
 <td width="16.666666666667%">Folio Interno</td>
 <td width="16.666666666667%">Descripcion</td>
 <td width="16.666666666667%">Marca</td>
 <td width="16.666666666667%">Modelo</td>
 <td width="16.666666666667%">Numero de Serie</td>
 <td width="16.666666666667%">Caracteristicas</td>
 <td width="6.666666666667%">Resguardo</td>
 <td width="6.666666666667%">Estado Fisico</td>
 <td width="6.666666666667%">ID Usuario</td>
 </tr>
 </thead>
 <tbody>
 <!-- ITEMS -->
 <?php foreach($model as $row): ?>
 <tr>
 <td align="center">
 <?php echo $row->id_Mob; ?>
 </td>
 <td align="center">
 <?php echo $row->Descripcion; ?>
 </td>
 <td align="center">
 <?php echo $row->marca->Marca; ?>
 </td>
 <td align="center">
 <?php echo $row->Modelo; ?>
 </td>
 <td align="center">
 <?php echo $row->NumSerie; ?>
 </td>
 <td align="center">
 <?php echo ($row->Caracter); ?>
 </td>
 <td align="center">
 <?php echo ($row->NumResguardo); ?>
 </td>
 <td align="center">
 <?php echo ($row->EstadoFisico); ?>
 </td>
 <td align="center">
 <?php echo $row->id_Usuario; ?>
 </td>
 </tr>
 <?php endforeach; ?>
 <!-- FIN ITEMS -->
 <tr>
 <td class="blanktotal" colspan="8" rowspan="8"></td>
 </tr>
 </tbody>
 </table>
<br>
<br>
<br>
<br>

<p>Este resguardo se creo para hacer respaldolkjflkjfsldkfsdlkflskdfjsdflksdflsdflksdjflsdjflskdjfllkdfsddllf
sdfljjsdfjhsdfkjhsdkjfhsdkjfhksdjfddf
sdfkjshdfkjhsdkfjh</p>

<p> <?php echo $row->id_Usuario.Nombre ?> </p>


 </body>
 </html>
<?php endif; ?>
