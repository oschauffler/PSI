<?php
	require ('connexion.php');

	$sql = $pdo->query("SELECT individu.id AS cle, individu.nom AS nom, prenom, email, num, statut.intitule AS statut1, annuaire.libelle AS annuaire1 FROM individu JOIN statut ON individu.statut=statut.id JOIN annuaire ON individu.annuaire=annuaire.id ORDER BY nom;")or die(mysql_error());
	$an=100;
	$groupe=100;


	$sql2 = $pdo->query("SELECT id, intitule from groupe order by intitule");
?>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>Liste individus</title>
		<link href="bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="styles.css"> 
	</head>
	<body>
		<h1 id="haut">Liste des individus</h1>
		Cocher une (ou des) case(s) pour supprimer un (ou des) individu(s)<br>  
		Cocher une (ou des) case(s) pour ajouter un (ou des) individu(s) à un groupe <br>
		<input type="button" value="<- Retour" OnClick=window.location.href="accueil.html" />
		<?php echo "<a href='excel.php?an=".$an."&groupe=".$groupe."'><button type='button'>Exporter au format '.xls'</button></a>"; ?>
		<input type="button" value="Ajouter" OnClick=window.location.href="ajoutIndividu.php" /><br><br>

		<form method='post' action='action.php'>
		<table border=1 align="center">
			<tr><th>Nom</th><th>Pr&eacute;nom</th><th>Email</th><th>Numéro</th><th>Annuaire</th><th>Statut</th><th>Modifier</th><th>Supprimer</th><th>Ajouter à un groupe</th></tr>

			<?php
				while ($data = $sql->fetch())
				{
					echo "<tr><td>".$data["nom"]."</td><td>";
					echo $data["prenom"]."</td><td>";
					echo $data["email"]."</td><td>";
					echo $data["num"]."</td><td>";	
					echo $data["annuaire1"]."</td><td>";
					echo $data["statut1"]."</td><td>";
					echo "<a href ='fiche.php?qui=".$data["cle"]."'><img src='editer.png' width='70px' /></a></td><td align='center'>";
					$id = $data['cle'];
					echo "<input type='checkbox' name='delete[$id]'></td><td align='center'>";
					echo "<input type='checkbox' name='ajout[$id]'></td></tr>";
				}
			?>
		</table>
		S&eacute;lectionnez un groupe et une date pour ajouter les individus s&eacute;l&eacute;ctionnés au groupe : 
		<SELECT name = "groupe" size = "1">
			<?php 
				while ($data = $sql2 -> fetch())
				{
					echo "<OPTION value=".$data['id'].">".$data['intitule'];
				}
			?>
		</SELECT>
		
		<SELECT name = "annee" size = "1">
			<?php
				for($ann= date('Y')-10; $ann <= date('Y')+10; $ann++)
				{
					echo "<OPTION>".$ann;
				}
			?>
		</SELECT>
		<br>
		<input class='bouton' type='submit' name='inserer' value='Ajouter au groupe'>
		<input class='bouton' type='submit' name='suppr' value='Supprimer'>
		</form>
		<input type="button" OnClick=window.location.href='#haut' value="Retour haut de page"/> <br>
	</body>
</html>