<?php

// Sélectionne toutes les fresques dans la base de données
function select_albumartiste($pdo, $id)
{
  // construction de la requête
  $sql = 'select * from artiste INNER join album on artiste.id_artiste = album.id_artiste where artiste.id_artiste = :id' ;

  // exécution de la requête
  $query = $pdo->prepare($sql);
  $query->bindValue(':id',$id,PDO::PARAM_INT);
  $query->execute();

  if ($query->errorCode() == '00000') {
    // récupération des données dans un tableau
    $tableau = $query->fetchALL(PDO::FETCH_OBJ);
  } else {
    echo '<p>Erreur dans la requête : ' . $query->errorInfo()[2] . '</p>';
    $tableau = null;
  }

  return $tableau;
}
