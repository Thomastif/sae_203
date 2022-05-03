<?php

// Sélectionne toutes les fresques dans la base de données
function select_pop($pdo, $id)
{
  // construction de la requête
  $sql = 'select * from album 
          INNER join artiste on album.id_artiste = artiste.id_artiste 
          INNER join type_album on album.id_album = type_album.id_album
          INNER join type on type_album.id_type = type.id_type
          where type.id_type = 2' ;

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

function select_rap($pdo, $id)
{
  // construction de la requête
  $sql = 'select * from album 
          INNER join artiste on album.id_artiste = artiste.id_artiste 
          INNER join type_album on album.id_album = type_album.id_album
          INNER join type on type_album.id_type = type.id_type
          where type.id_type = 1' ;

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

function select_hip($pdo, $id)
{
  // construction de la requête
  $sql = 'select * from album 
          INNER join artiste on album.id_artiste = artiste.id_artiste 
          INNER join type_album on album.id_album = type_album.id_album
          INNER join type on type_album.id_type = type.id_type
          where type.id_type = 3' ;

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