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
include('include/artiste.php');
$artiste = select_artiste($pdo, $id);


include('include/albumartiste.php');
$albumartiste = select_albumartiste($pdo, $id);

include('include/chat.php');
$chat = select_chat($pdo, $id);
$chatbox = select_chatbox($pdo);



// Lancement du moteur Twig avec les données
echo $twig->render('artiste.twig', [
//    'table' => $table,
//    'ligne' => $ligne,
	'id' => $id,
	'albumartiste' => $albumartiste,
	'artiste' => $artiste,
	'chat' => $chat,
	'chatbox' => $chatbox,
]);
