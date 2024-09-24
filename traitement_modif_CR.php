<?php 
include 'connexion2.php';
session_start();

if (isset($_SESSION['id'])) {
    $user = $_SESSION['id'];

    // Fetch user details
    $users = $con->query("SELECT * FROM users WHERE username = '$user'");
    $donnees = $users->fetch();
    $data = $donnees['id_User'];

    // Check if form ID is passed via GET
    if (isset($_GET['id'])) {
        $id_form = $_GET['id'];
    } else {
        // Handle error when id_form is not present
        echo "ID form not found!";
        exit;
    }

    // Check if form data is submitted
    if (isset($_POST["MAT_NOM"], $_POST["MOT_NOM"], $_POST["Urgent_NOM"])) {
        
        // Sanitize input
        $MAT_NOM = htmlspecialchars($_POST["MAT_NOM"]);
        $MOT_NOM = htmlspecialchars($_POST["MOT_NOM"]);
        $Urgent_NOM = htmlspecialchars($_POST["Urgent_NOM"]);
        $today = date("Y-m-d"); // Use full year for clarity

        // Prepare and execute the UPDATE query
        $req = $con->prepare('UPDATE form_visite SET dateJ = :a, materiaux = :c, motif = :e, urgent = :f, id_User = :b WHERE id_form = :id_form');
        $result = $req->execute(array(
            'a' => $today,
            'c' => $MAT_NOM,
            'e' => $MOT_NOM,
            'f' => $Urgent_NOM,
            'b' => $data,
            'id_form' => $id_form // Pass the form ID from the GET parameter
        ));

        // Check if the update was successful
        if ($result) {
            header('Location: index.php'); // Redirect on success
            exit; // Ensure no further code is executed
        } else {
            // Output error information for debugging
            print_r($req->errorInfo());
        }
    }
} else {
    // If session is not active, destroy it and redirect to login
    session_destroy();
    header("Location: login.php");
    exit;
}
?>
