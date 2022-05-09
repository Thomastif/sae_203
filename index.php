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
include('include/accueil.php');
$albumnew = select_newsong($pdo, $id);
$albumreco = select_reco($pdo, $id);

include('include/chat.php');
$chat = select_chat($pdo, $id);

// Lancement du moteur Twig avec les données
echo $twig->render('accueil.twig', [
//    'table' => $table,
//    'ligne' => $ligne,
	'id' => $id,
	'albumnew' => $albumnew,
	'albumreco' => $albumreco,
	'chat' => $chat
]);
