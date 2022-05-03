<?php

// Sélectionne toutes les fresques dans la base de données
function select_newsong($pdo, $id)
{
  // construction de la requête
  $sql = 'select * from album INNER join artiste on album.id_artiste = artiste.id_artiste where id_album < 5' ;

  // exécution de la requête
  $query = $pdo->prepare($sql);
  //$query->bindValue(':id',$id,PDO::PARAM_INT);
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

function select_reco($pdo, $id)
{
  // construction de la requête
  $sql = 'select * from album INNER join artiste on album.id_artiste = artiste.id_artiste where id_album > 9' ;

  // exécution de la requête
  $query = $pdo->prepare($sql);
  //$query->bindValue(':id',$id,PDO::PARAM_INT);
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