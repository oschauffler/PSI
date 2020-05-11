<?php
	require ('connexion.php');
	$sql2 = $pdo->query("SELECT id, intitule from groupe order by intitule");
	$sql3 = $pdo->query("SELECT id, intitule from groupe order by intitule");
	
	if(isset($_POST['ok']))
	{
		$sql = $pdo->query("SELECT appartient.an AS an, groupe.intitule AS groupe, individu.id AS cle, individu.nom AS nom, prenom, email, num, statut.intitule AS statut1, annuaire.libelle AS annuaire1 FROM individu JOIN statut ON individu.statut=statut.id JOIN annuaire ON individu.annuaire=annuaire.id JOIN appartient ON individu.id=appartient.personne JOIN groupe ON appartient.groupe=groupe.id  WHERE groupe=".$_POST['groupe']." ORDER BY nom;")or die(mysql_error());
		$an=100;
		$groupe=$_POST['groupe'];
		
		if(isset($_POST['annee']))
		{
				$sql = $pdo->query("SELECT appartient.an AS an, groupe.intitule AS groupe, individu.id AS cle, individu.nom AS nom, prenom, email, num, statut.intitule AS statut1, annuaire.libelle AS annuaire1 FROM individu JOIN statut ON individu.statut=statut.id JOIN annuaire ON individu.annuaire=annuaire.id JOIN appartient ON individu.id=appartient.personne JOIN groupe ON appartient.groupe=groupe.id  WHERE an=".$_POST['annee']." and groupe =".$_POST['groupe']." ORDER BY nom;")or die(mysql_error());
				$an=$_POST['annee'];
				$groupe=$_POST['groupe'];
		}
	}
	else
	{
				$sql = $pdo->query("SELECT appartient.an AS an, groupe.intitule AS groupe, individu.id AS cle, individu.nom AS nom, prenom, email, num, statut.intitule AS statut1, annuaire.libelle AS annuaire1 FROM individu JOIN statut ON individu.statut=statut.id JOIN annuaire ON individu.annuaire=annuaire.id JOIN appartient ON individu.id=appartient.personne JOIN groupe ON appartient.groupe=groupe.id  ORDER BY nom;")or die(mysql_error());
	$an=100;
	$groupe=100;
	}
	
	if(isset($_POST['suppr'])){
		try
		{
			$tab = $_POST['delete'];
	
			foreach ($tab as $key => $value) 
			{
				$sql = "DELETE FROM appartient WHERE personne='$key'";
				$pdo->exec($sql);
				header('Location: association.php');
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
		<meta charset="UTF-8" />
		<title>Liste par groupe</title>
		<link href="bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="styles.css"> 
	</head>
	<body>
		<h1 id="haut">Liste des individus par groupe</h1>
		<input type="button" value="<- Retour" OnClick=window.location.href="accueil.html" />
		<?php echo "<a href='excel.php?an=".$an."&groupe=".$groupe."' ><button type='button'>Exporter au format '.xls'</button></a><br><br>"; ?><br>
		
		<form method='post' action='association.php'>
		<SELECT name = "groupe" size = "1">
			<?php 
				while ($data = $sql2 -> fetch())
				{
					
					echo "<option value='".$data['id']."'";
						if(isset ($_POST['groupe']))
						{
							if($_POST['groupe'] == $data['id'])
							{
								echo " selected";
							}
						}
					echo ">".$data['intitule']."</option>";
				}
			?>
		</SELECT>
		
		
	
		<?php
	
		
			if(isset($_POST['groupe']))
			{

				
				echo "<SELECT name = 'annee'>";
				$j = $pdo->query("SELECT DISTINCT an FROM appartient WHERE groupe=".$_POST['groupe']." ORDER BY an;")or die(mysql_error());
					while($donnees = $j->fetch()){
						echo "<option value=".$donnees['an'].">".$donnees['an']."</option>";
					}
				echo "</SELECT>"; 
				
			}
		
		
		?>&nbsp;
		<input type="submit" value="Ok" name="ok" /><br>
		<input type="button" value="Retirer les filtres" OnClick=window.location.href="association.php"><br><br>
	
		
		<table border=1 align="center">
			<tr><th>Nom</th><th>Prenom</th><th>Email</th><th>Numéro</th><th>Annuaire</th><th>Statut</th><th>Supprimer du groupe</th></tr>

			<?php
				while ($data = $sql->fetch())
				{
					echo "<tr><td>".$data["nom"]."</td><td>";
					echo $data["prenom"]."</td><td>";
					echo $data["email"]."</td><td>";
					echo $data["num"]."</td><td>";	
					echo $data["annuaire1"]."</td><td>";
					echo $data["statut1"]."</td><td align='center'><br>";
					$id = $data['cle'];
					echo "<input type='checkbox' name='delete[$id]'></td></tr>";
				}
			?>
		</table>
		<br>	
		<input class='bouton' type='submit' name='suppr' value='Supprimer'>
		</form>
		<input type="button" OnClick=window.location.href='#haut' value="Retour haut de page"/>
	</body>
</html>
