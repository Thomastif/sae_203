<?php

// Initialise Twig
include('include/twig.php');
$twig = init_twig();

// Récupère les données GET sur l'URL
if (isset($_GET['id'])) $id = $_GET['id']; else $id = 0;

// Convertit l'identifiant en entier
//$id = intval($id);

// Connexion à la base de données
include('include/connexion.php');
$pdo = connexion();

// Récupération des données : exemples
//include('include/select.php');
//$table = select_table($pdo);
//$ligne = select_ligne_unique($pdo, $id);

// Récupération des données
include('include/album.php');
$musique = select_musique($pdo, $id);


// Lancement du moteur Twig avec les données
echo $twig->render('album.twig', [
//    'table' => $table,
//    'ligne' => $ligne,
	'id' => $id,
	'musique' => $musique,
]);
