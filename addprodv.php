<?php
			$serveur ="localhost";
			$bdd ="Automobile";
			$user ="root";
			$mdp="root";
			$connexion = mysqli_connect($serveur, $user, $mdp);
			mysqli_select_db($connexion, $bdd);
			$requete ="select * from products;";
			$resultats = mysqli_query($connexion, $requete);

		if (isset($_POST["Valider"]))
		{
		$name = $_POST["name"];
		$desc = $_POST["desc"];
		$price = $_POST["price"];
		$rrp = $_POST["rrp"];
		$quantity = $_POST["quantity"];
		$img = $_POST["img"];
		$datetime = date("Y-m-d H:i:s");
		$requete = "insert into products values('0', '$name', '$desc','$price','$rrp','$quantity','$img','$datetime')";
		echo $requete;
		$resultats = mysqli_query($connexion,$requete);
		echo "Le produit ".$name."a été ajouté !";
		mysqli_close($connexion);
		}
?>