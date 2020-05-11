<?php
require('connexion.php');

if(isset($_POST['suppr']))  
{
	try
	{
		$tab = $_POST['delete'];
	
		foreach ($tab as $key => $value) 
		{
			$sql = "DELETE from individu where id=$key";
			$sql2 = "DELETE FROM appartient WHERE personne='$key'";
			$pdo->exec($sql2);
			$pdo->exec($sql);
			header('Location: individu.php');
		}
	}
	
	catch(PDOexception $e)
	{
		echo $sql . "<br>" . $e->getMessage();
    }
}

if(isset($_POST['inserer']))
{
	try
	{
		$groupe = $_POST['groupe'];
		$annee  = $_POST['annee'];
		$tab = $_POST['ajout'];
		foreach ($tab as $key => $value) 
		{
			$sql = "INSERT INTO appartient (an, personne, groupe) VALUES ('$annee', $key , $groupe);";
			$pdo->exec($sql);
			header('Location: individu.php');
		}
	
	}
	
	catch(PDOexception $e)
	{
		echo $sql . "<br>" . $e->getMessage();
    }
}

?>