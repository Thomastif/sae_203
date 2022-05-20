<?php
error_reporting(0);
function select_like($pdo, $id_musique)
{
    // initialisation des variables
    if($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["btnlike"]))
    {
        $sql = "SELECT is_like FROM musique WHERE id_musique = :id_musique";
        $stmt = $pdo -> prepare($sql);
        $stmt->bindParam(":id_musique", $id_musique, PDO::PARAM_INT);
        $stmt->execute();
        // var_dump($stmt);

        $islike = $stmt ->fetchAll(PDO::FETCH_ASSOC);
        var_dump($id_musique);

        if($islike[0]["is_like"] == 0){

            $sql = "UPDATE musique SET is_like = '1', musique_btn = 'unlike' WHERE id_musique = :id_musique";

            $query = $pdo -> prepare($sql);

                $param_unlike=$_POST["btnlike"];
                $query->bindParam(":id_musique", $id_musique, PDO::PARAM_INT);

                
            $query->execute();
        }
        else {
            $sql = "UPDATE musique SET is_like = '0', musique_btn = 'like' WHERE id_musique = :id_musique";

            $query = $pdo -> prepare($sql);

                $param_like=$_POST["btnlike"];
                $query->bindParam(":id_musique", $id_musique, PDO::PARAM_INT);

                
            $query->execute();
        }
        header('Refresh:0.000001');
            
    }
}


    function select_musique_like($pdo)
{
  // construction de la requête
  $sql = 'select * from musique 
          INNER join album on musique.id_album = album.id_album 
          INNER join musique_artiste on musique.id_musique = musique_artiste.id_musique
          INNER join artiste on musique_artiste.id_artiste = artiste.id_artiste
          where musique.is_like = 1
          ORDER BY musique.id_musique' ;

  // exécution de la requête
  $query = $pdo->prepare($sql);
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
