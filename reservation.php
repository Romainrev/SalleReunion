<?php
if(isset($_POST['Reserver'])){
    include_once ("./function/ConnectionPDO.php");
    $db=connectionPDO();
    $date=$_POST['date'];
    $salle=$_POST['Salle'];
    $duree=$_POST['durée'];
    if($salle==0 || $duree==0 || $date==0){
        echo("Veuillez renseigner les informations manquantes");

    } else {
        $requete="INSERT INTO `t_reservation` (`id_RESERVATION`, `DATE`,`T_SALLE_id_SALLE`, `Duree`) VALUES (NULL, '$date','$salle','$duree') ";

        $result=$db->query($requete);
    }

}
