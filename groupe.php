<?php

require('connexion.php');

$resultat = $pdo->query("SELECT id,intitule from groupe order by intitule");

echo "<b>Liste des groupes : </b><br><br>";

echo "<form method='post' action='supprimerGroupe.php'>";
echo "<table border=1 align='center'>
			<tr><th>	</th><th>Groupe</th></tr>";
while($req=$resultat->fetch())
{	
	$id = $req['id'];
	echo "<tr><td><input type='checkbox' name='delete[$id]'></td><td>";
	echo $req['intitule'].'</td></tr>';
	
					
}
echo "</table>";
echo "<input class='bouton' type='submit' name='suppr' value='Supprimer'>";
echo "</form>";

if(isset($_POST['inserer']))
{
	try
	{
		$intitule = $_POST['intitule'];
		$aff=$pdo->query("SELECT COUNT(*) FROM groupe WHERE intitule='$intitule';");
		$verif=$aff->fetchColumn();
		
		if($verif == 0){
			$sql = "INSERT INTO groupe (intitule) VALUES ('$intitule')";
			$pdo->exec($sql);
			header('Location: groupe.php');
		}
		
		else{
			echo "Le groupe existe déjà dans la base, merci de recommencer votre saisie";
		}
	}
	
	catch(PDOexception $e)
	{
		echo $sql . "<br>" . $e->getMessage();
    }
}

?>

<html>
	<head>
		<title> liste des groupes </title>
		<meta charset="UTF-8">
		<link href="bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="styles.css"> 
	</head>
	
	<body>
		<b><br><br>Ajouter un groupe : </b><br><br>
		<form method="post" action="groupe.php">
			<p>
				<b>Intitule</b>
					<input type="text" name="intitule" title="Veuillez entrer l'intitule du groupe" autofocus required>
				
				<br><br>
				<input class="bouton" type="submit" name="inserer" value="Ajouter">
				<br><br>
		</form>
		<input type="button" value="<- Retour" OnClick=window.location.href="accueil.html" />
	</body>
</html>
