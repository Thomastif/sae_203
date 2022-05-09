<?php

// Sélectionne toutes les fresques dans la base de données
function select_album($pdo, $id)
{
  // construction de la requête
  $sql = 'select * from artiste INNER join album on artiste.id_artiste = album.id_artiste where id_album = :id' ;

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

function select_musique($pdo, $id)
{
  // construction de la requête
  $sql = 'select * from musique 
          INNER join album on musique.id_album = album.id_album 
          INNER join musique_artiste on musique.id_musique = musique_artiste.id_musique
          INNER join artiste on musique_artiste.id_artiste = artiste.id_artiste
          where album.id_album = :id' ;

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


