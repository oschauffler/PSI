<?php
	require ('connexion.php');
	
	if(isset ($_POST['ok'])){
		$nom=$_POST['nom'];
		$prenom=$_POST['prenom'];
		$email=$_POST['mail'];
		$num=$_POST['numero'];
		$annuaire=$_POST['annuaire'];
		$statut=$_POST['statut'];
		
		$aff=$pdo->query("SELECT COUNT(*) FROM individu WHERE num=$num;");
		$verif=$aff->fetchColumn();
		if($verif == 0){
			$sql="INSERT INTO individu(nom,prenom,email,num,annuaire,statut) VALUES('$nom','$prenom','$email','$num','$annuaire','$statut');";
			if($pdo->query($sql)== TRUE){
				header("location: individu.php");
			}
			else echo "ERREUR";
		}
		else{
			echo "La personne existe déjà dans la base, merci de recommencer votre saisie";
		}
	}
?>
<html>
	<head>
		<meta charset="UTF-8" />
		<title> Ajout Individu </title>
		<link href="bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="styles.css">
	</head>
	<body>
		<h1>Remplissez les champs afin d'ajouter un individu</h1>
		<div ><br>
			<form action="ajoutIndividu.php" method="post">
				Nom: <input type="text" name="nom"><br><br>
				Pr&eacute;nom: <input type="text" name="prenom"><br><br>
				Email: <input type="text" name="mail"><br><br>
				Numéro : <input type="text" name="numero"><br><br>
				Annuaire: <select name="annuaire"><br><br>
				<?php
					$sql2=$pdo->query("SELECT * FROM annuaire ORDER BY libelle;");
					while ($data = $sql2->fetch()) {
				?>
				  		<option value="<?php echo $data['id'];?>"><?php echo $data['libelle']?></option>
				<?php 
					} 
				?>
				</select><br><br>
				Statut: <select name="statut"><br><br>
				<?php
					$sql2=$pdo->query("SELECT * FROM statut ORDER BY intitule;");
					while ($data = $sql2->fetch()) {
				?>
				  		<option value="<?php echo $data['id'];?>"><?php echo $data['intitule']?></option>
				<?php 
					} 
				?>
				</select><br><br>
				<input type="submit" value="Envoyer" name="ok" /><br>
			</form>
		</div><br><br><br>
		<input type="button" value="Retour" OnClick=window.location.href="individu.php" />
	</body>
</html>