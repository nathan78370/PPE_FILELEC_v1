<?=template_header('Place Order')?>

 <form action ="orderv.php"method="post">
                            
                        <center><label for="DateLivraison">
                            <i class="fas fa-truck"></i>
                        </label>
                            <input type="date" class="form-control" id="date" name="DateLivraison" value=""
                                   placeholder="Renseignez une date de livraison">
                                <input type="submit" value="Valider" name="Valider">
								</input>

                        </center>

<?=template_footer()?>