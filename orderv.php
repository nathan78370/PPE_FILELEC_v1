<?php
			$serveur ="localhost";
			$bdd ="Automobile";
			$user ="root";
			$mdp="root";
			$connexion = mysqli_connect($serveur, $user, $mdp);
			mysqli_select_db($connexion, $bdd);
			$requete ="select * from bonlivraison;";
			$resultats = mysqli_query($connexion, $requete);

		if (isset($_POST["Valider"]))
		{
		$datelivraison = $_POST['DateLivraison']
		$requete = "insert into bonlivraison values('0', '$datelivraison')";
		echo $requete;
		$resultats = mysqli_query($connexion,$requete);
		echo "Bravo votre commande à bien été passer !";
		mysqli_close($connexion);
		}
?>