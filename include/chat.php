<?php

function select_chat()
{
    require_once('include/connexion.php');
    $pdo = connexion();

    // initialisation des variables
    $param_message = $param_pseudo = "";
    if($_SERVER["REQUEST_METHOD"] == "POST")
    {
        $sql = "INSERT INTO chatbox (chatbox_pseudo, chatbox_message) VALUES (:chatbox_pseudo, :chatbox_message)";

        if(!empty($_POST["chatbox_pseudo"] ) && !empty ($_POST["chatbox_message"])){

            if($query = $pdo -> prepare($sql)){ 

                $param_message= strip_tags($_POST["chatbox_message"]);
                $param_pseudo= strip_tags($_POST["chatbox_pseudo"]);

                $query->bindParam(":chatbox_pseudo", $param_pseudo, PDO::PARAM_STR);
                $query->bindParam(":chatbox_message", $param_message, PDO::PARAM_STR);
        

                    $query->execute();
            }
        }
    }
}
                        //var_dump($param_pseudo, $param_message);
                            
                    
                    //unset($query);
                
               // unset($pdo);


function select_chatbox($pdo)
{
    $sql ="SELECT * FROM chatbox ORDER BY id_chatbox DESC LIMIT 0,5";

    $query = $pdo->prepare($sql);
    $query->execute();

    if ($query->errorCode() == '00000') {
    // récupération des données dans un tableau
    $tableau = $query->fetchALL(PDO::FETCH_OBJ);
    } 
    else {
    echo '<p>Erreur dans la requête : ' . $query->errorInfo()[2] . '</p>';
    $tableau = null;}
    
    return $tableau;
}