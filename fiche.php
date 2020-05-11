<?php 
	require ('connexion.php');

	if (isset($_GET['qui'])) $id=$_GET['qui'];
	
	if(isset($_POST['ok'])){
		$ide=$_POST['id'];
		$nom=$_POST['nom'];
		$prenom=$_POST['prenom'];
		$mail=$_POST['mail'];
		$numero=$_POST['numero'];
		$annuaire=$_POST['annuaire'];
		$statut=$_POST['statut'];
		echo $ide;

		$sql=$pdo->query("UPDATE individu SET nom='$nom', prenom='$prenom', email='$mail', num=$numero, annuaire=$annuaire, statut=$statut WHERE id=$ide;");
		
		if($sql== TRUE){
			header("location: individu.php");
		}
		else echo "ERREUR";
	}
?>
<html>
	<head>
		<title>Fiche <?php echo $id; ?></title>
		<link href="bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="styles.css">
	</head>
	<body><h1>Vous pouvez modifier cette fiche puis cliquer sur le bouton afin d'enregistrer les changements</h1><br>
		<div>
			<form action="fiche.php" method="post">

				<?php 	
					$sql2=$pdo->query("SELECT individu.id, nom, prenom, email, num, intitule, libelle FROM individu JOIN statut ON individu.statut=statut.id JOIN annuaire ON individu.annuaire=annuaire.id WHERE individu.id='$id';");	
					while ($req = $sql2->fetch()){
						echo"<input type='hidden' name='id' value=".$req['id']."><br>";
						echo "Nom : <input type='text' name='nom' value='".$req['nom']."'><br><br>";
						echo"Pr&eacute;nom : <input type='text' name='prenom' value='".$req['prenom']."'><br><br>";
						echo "Mail : <input type='text' name='mail' value='".$req['email']."'><br><br>";
						echo "Numero : <input type='text' name='numero' value='".$req['num']."'><br><br>";

						echo"Annuaire : <select name='annuaire'>";
						$sql3=$pdo->query("SELECT * FROM annuaire ORDER BY libelle;");
						while ($data = $sql3->fetch()) {
							if($req['libelle'] == $data['libelle']){
								echo "<option value='".$data['id']."' selected>".$data['libelle']."</option>";
							}else {
								echo "<option value='".$data['id']."'>".$data3['libelle']."</option>";
							}
						} 
						echo "</select>";
						echo"<br><br>Statut : <select name='statut'>";	
						$sql0=$pdo->query("SELECT * FROM statut ORDER BY intitule;");
						while ($donnee = $sql0->fetch()) {
							if($req["intitule"] == $donnee['intitule']){
								echo "<option value='".$donnee['id']."' selected>".$donnee['intitule']."</option>";
							} else {
								echo "<option value='".$donnee['id']."'>".$donnee['intitule']."</option>";
							}
						} 
						echo "</select><br><br>";
					}
				?>
				<input type="submit" value="Enregistrer" name="ok"/> 
			</form>	
		</div>
		<p align="center"><br><br><input type="button" value="Retour" OnClick=window.location.href="individu.php" /></p>
	</body>
</html>