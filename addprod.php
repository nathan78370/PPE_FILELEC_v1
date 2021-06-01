<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Ajout d'un produit</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
        <link href="style.css" rel="stylesheet" type="text/css">
        <div class="buttons"><a href="index.php">Retour</a></div>
    </head>
    <body>
    <div class="login">
    <h1>Ajouter produit</h1>
 <form action ="addprodv.php"method="post">
                                    <input type="text" class="form-control" id="name" name="name" value=""
                                        placeholder="Nom du produit">
                               
                                    <input type="text" class="form-control" id="desc" name="desc" value=""
                                        placeholder="Description">
                                
                                       
                                    <input type="number" step="any" class="form-control" id="price" name="price" value=""
                                        placeholder="Prix">
                                
									<input type="number" step="any" class="form-control" id="rrp" name="rrp" value=""
                                        placeholder="Promo">

                                    <input type="number" class="form-control" id="quantity" name="quantity" value=""
                                        placeholder="Quantité">

                                    <input type="text" class="form-control" id="img" name="img" value=""
                                        placeholder="Image">                                

                                
                                    <input type="submit" value="Valider" name="Valider" >
</input>
                                    </form>
        </div>
    </body>
</html>

