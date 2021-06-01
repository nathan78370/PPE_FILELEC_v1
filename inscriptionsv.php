<?php
			$serveur ="localhost";
			$bdd ="Automobile";
			$user ="root";
			$mdp="root";
			$connexion = mysqli_connect($serveur, $user, $mdp);
			mysqli_select_db($connexion, $bdd);
			$requete ="select * from accounts;";
			$resultats = mysqli_query($connexion, $requete);

		if (isset($_POST["Valider"]))
		{
		$username = $_POST["username"];
		$password = $_POST["password"];
		$email = $_POST["email"];
		$adresse = $_POST['adresse'];
		$telephone = $_POST['telephone'];
		$requete = "insert into accounts values('0', '$username', '$password','$email','$adresse','$telephone')";
		echo $requete;
		$resultats = mysqli_query($connexion,$requete);
		echo "Bravo vous avez crée votre compte ! ".$username."";
		mysqli_close($connexion);
		}
?>