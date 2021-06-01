<?php
session_start();
if (!isset($_SESSION['loggedin'])) {
	header('Location: index.html');
	exit;
}
$DATABASE_HOST = 'localhost';
$DATABASE_USER = 'root';
$DATABASE_PASS = 'root';
$DATABASE_NAME = 'automobile';
$con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
if (mysqli_connect_errno()) {
	exit('Failed to connect to MySQL: ' . mysqli_connect_error());
}
$stmt = $con->prepare('SELECT password, email, adresse, telephone FROM accounts WHERE id = ?');
$stmt->bind_param('i', $_SESSION['id']);
$stmt->execute();
$stmt->bind_result($password, $email, $adresse, $telephone);
$stmt->fetch();
$stmt->close();
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Votre profil</title>
		<link href="style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
	</head>
	<body class="loggedin">
		<nav class="navtop">
			<div>
				<h1>FileElec Store</h1>
				<a href="addprod.php"><i class="fas fa-plus-square"></i>Ajouter un produit</a>
				<a href="index.php"><i class="fas fa-store"></i>Magasin</a>
				<a href="profile.php"><i class="fas fa-user-circle"></i>Profil</a>
				<a href="logout.php"><i class="fas fa-sign-out-alt"></i>Déconexion</a>
			</div>
		</nav>
		<div class="content">
			<h2>Votre profil</h2>
			<div>
				<p>Vos détails de compte sont ici:</p>
				<table>
					<tr>
						<td>Nom de compte:</td>
						<td><?=$_SESSION['name']?></td>
					</tr>
					<tr>
						<td>Mot de passe:</td>
						<td><?=$password?></td>
					</tr>
					<tr>
						<td>Email:</td>
						<td><?=$email?></td>
					</tr>
					<tr>
						<td>Adresse:</td>
						<td><?=$adresse?></td>
					</tr>
					<tr>
						<td>Téléphone:</td>
						<td><?=$telephone?></td>
					</tr>
				</table>
			</div>
		</div>
	</body>
</html>