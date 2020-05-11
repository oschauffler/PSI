<?php

require('connexion.php');

if(isset($_POST['suppr']))  // supprimer la ligne dans appartient plus tard
{
	try
	{
		$tab = $_POST['delete'];
	
		foreach ($tab as $key => $value) 
		{
			$sql = "DELETE from groupe where id=$key";
			$sql2 = "DELETE from appartient WHERE groupe=$key;";
			$pdo->exec($sql);
			$pdo->exec($sql);	
			header('Location: groupe.php');
		}
	}
	
	catch(PDOexception $e)
	{
		echo $sql . "<br>" . $e->getMessage();
    }
}


?>
