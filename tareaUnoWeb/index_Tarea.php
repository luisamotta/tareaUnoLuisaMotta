<?php 
	include_once 'includes/connection.php'; //INCLUYO ARCHIVO DE CONEXIÓN
	$query = "SELECT * FROM materia ORDER BY id_materia ASC";
	$resultQuery = mysqli_query($con,$query);
?>


<!DOCTYPE html>
<html>
	<head>
		<title></title>
	</head>
	<body>
		<!-- Select -->
		<form action="estudiantesCurso.php" method="post">
		 



		  Consultar notas de estudiantes por curso:  <br/> 
		  <br/> 
		  <br/> 
seleccione el curso:
		  <br/> 
		   <select name="materia">
		   <?php






		   
			   	while ($row = mysqli_fetch_array($resultQuery)) {  

					echo "<option value='".$row['id_materia']."'>".$row['nombre_materia'] ."</option>";
				}
			?>
		   </select>
		   <p><input type="submit" value="Ver estudiantes" /></p>
		</form>
	</body>
</html>