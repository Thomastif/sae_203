<?php

function select_chat()
{
    $pdo = connexion();

    // initialisation des variables
    $chatbox_pseudo = $chatbox_message ="";
    $param_message = $param_pseudo = "";
var_dump($_POST);
    if($_SERVER["REQUEST_METHOD"] == "POST")
    {
            //validation psuedo
            if(empty($_POST["chatbox_pseudo"])){}
            
            else{
                //requête ajout de la description
                $sql = "SELECT chatbox_pseudo FROM chatbox WHERE chatbox_pseudo = :chatbox_pseudo";
        
                if($query = $pdo->prepare($sql)){
                    $query->bindParam(":chatbox_pseudo", $param_pseudo, PDO::PARAM_STR);
                    $param_pseudo = $_POST["chatbox_pseudo"];


                    if($query->execute()){
                        $param_pseudo = $_POST["chatbox_pseudo"];
                    }
                }
            }
        

            //validation de la description de la catégorie
            if(!empty($_POST["chatbox_message"])){$param_message = $_POST["chatbox_message"];}
            else{
                //requête ajout de la description
                $sql = "SELECT chatbox_message FROM chatbox WHERE chatbox_message = :chatbox_message";
        
                if($query = $pdo->prepare($sql)){
                    $query->bindParam(":chatbox_message", $param_pseudo, PDO::PARAM_STR);
        
                    $param_message = $_POST["chatbox_message"];
        
                    if($query->execute()){
                        $param_message = $_POST["chatbox_message"];
                        
                    }
                }
            }

                //insertion des données dans la bdd
        
                $sql = "INSERT INTO chatbox (chatbox_pseudo, chatbox_message) VALUES (:chatbox_pseudo, :chatbox_message)";
        
                if($query = $pdo->prepare($sql)){
        
                    $query->bindParam(":chatbox_pseudo", $param_pseudo, PDO::PARAM_STR);
                    $query->bindParam(":chatbox_message", $param_message, PDO::PARAM_STR);
        
                    $param_pseudo = $chatbox_pseudo;
                    $param_message = $chatbox_message;
        
                    //execution de $query
        
                    if($query->execute()){  

                        //$sql ="SELECT * FROM chatbox ORDER BY id_chatbox DESC LIMIT 0,5";
//
                        //$limitemsg = $pdo ->prepare($sql);
                        //while($message = $limitemsg->fetch());
                            }
                    else{ 
                        return;
                    } 
                    unset($query);
                }
                unset($pdo);
            
        
    }
}