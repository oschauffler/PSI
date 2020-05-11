<?php
include ('connexion.php');
 
if (isset($_GET['an'])) $an=$_GET['an'];
if (isset($_GET['groupe'])) $groupe=$_GET['groupe'];    

if(($an == 100)&&($groupe == 100)){
	$select = $pdo->prepare('
SELECT individu.nom AS nom, prenom, email, num, statut.intitule AS statut1, annuaire.libelle AS annuaire1 FROM individu JOIN statut ON individu.statut=statut.id JOIN annuaire ON individu.annuaire=annuaire.id ORDER BY nom;
');
	$nom="ListeIndividus";
}
elseif (($an==100)&&($groupe!=100)){
	$select = $pdo->prepare('
SELECT individu.nom AS nom, prenom, email, num, statut.intitule AS statut1, annuaire.libelle AS annuaire1 FROM individu JOIN statut ON individu.statut=statut.id JOIN annuaire ON individu.annuaire=annuaire.id JOIN appartient ON appartient.personne=individu.id WHERE appartient.groupe='.$groupe.' ORDER BY nom;
');
	$intitule=$pdo->query("SELECT intitule FROM groupe WHERE id=$groupe");
	$groupe=$intitule->fetchColumn();
	$nom=$groupe;
}
else{
	$select = $pdo->prepare('
SELECT individu.nom AS nom, prenom, email, num, statut.intitule AS statut1, annuaire.libelle AS annuaire1 FROM individu JOIN statut ON individu.statut=statut.id JOIN annuaire ON individu.annuaire=annuaire.id JOIN appartient ON appartient.personne=individu.id WHERE appartient.an='.$an.' AND appartient.groupe='.$groupe.' ORDER BY nom;
');
	$intitule=$pdo->query("SELECT intitule FROM groupe WHERE id=$groupe");
	$data=$intitule->fetchColumn();
	$nom= $data." ".$an;
}


$select->setFetchMode(PDO::FETCH_ASSOC);
$select->execute();

$newReservations = $select->fetchAll();

$excel = "";
$excel .=  "Nom\tPrenom\tMail\tNumero\tStatut\tAnnuaire\n";

foreach($newReservations as $row) {
    $excel .= "$row[nom]\t$row[prenom]\t$row[email]\t$row[num]\t$row[statut1]\t$row[annuaire1]\n";
}

header("Content-type: application/vnd.ms-excel");
header("Content-disposition: attachment; filename=$nom.xls"); 

print $excel;
exit;

?>
