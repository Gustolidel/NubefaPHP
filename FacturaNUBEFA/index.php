<?php 
include 'connect.php'
?>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    </head>
    <body>
        <br><br>
        <form action="" method="get" class="row" style="width: 300px; text-align: center">
            <label for="exampleInputEmail1" class="form-label">Tipo Documento</label>
            <select class="col " type="text" name="busqueda">
                <option value=1>DNI</option>
                <option value=2>RUC</option>
                <option value=3>CE</option>
                <option value=4>Pasaporte</option>
            </select>
            <label for="exampleInputEmail1" class="form-label">Nro Documento</label><br>
            <input class="col" type="text" name="nroDoc"><br>
            <input class="btn btn-primary " type="submit" name="enviar" value="Buscar">
        </form>
        <br><br><br>
        
        <?php
        if(isset($_GET['enviar'])){
            $busqueda= $_GET['busqueda'];
            $nroDoc= $_GET['nroDoc'];
            $consulta = $con->query("select * from empresa where (idTipo = '$busqueda') and (nroDoc = '$nroDoc')");
        ?>
        <?php
            
            while($row = $consulta-> fetch_array()){
        ?>
        <input class="col" type="text" style="width: 300px;" value="<?php echo $row['nombreCompleto']; ?>">
        <input class="col" type="text" style="width: 300px;" value="<?php echo $row['alias']; ?>">
        <input class="col" type="text" style="width: 300px;" value="<?php echo $row['direccion']; ?>">
        <input class="col" type="text" style="width: 300px;" value="<?php echo $row['ubigeo']; ?>">
        <input class="col" type="text" style="width: 300px;" value="<?php echo $row['email']; ?>">
        <br>
        <br>
        <?php
        
            }
        }
        ?>
    </body>
</html>
