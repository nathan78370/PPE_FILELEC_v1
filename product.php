<?php
if (isset($_GET['id'])) {
    $stmt = $pdo->prepare('SELECT * FROM products WHERE id = ?');
    $stmt->execute([$_GET['id']]);
    $product = $stmt->fetch(PDO::FETCH_ASSOC);
    if (!$product) {
            die ('Product does not exist!');
    }
} else {
    die ('Product does not exist!');
}
?>
<div class="products-wrapper">
<link href="style_magasin.css" rel="stylesheet" type="text/css">
<div class="buttons"><a href="index.php">Retour</a></div>
<div class="product content-wrapper">
    <img src="imgs/<?=$product['img']?>" width="500" height="500" alt="<?=$product['name']?>">
    <div>
        <h1 class="name"><?=$product['name']?></h1>
        <span class="price">
            &euro;<?=$product['price']?>
            <?php if ($product['rrp'] > 0): ?>
            <span class="rrp">&euro;<?=$product['rrp']?></span>
            <?php endif; ?>
        </span>
        <form action="index.php?page=cart" method="post">
            <input type="number" name="quantity" value="1" min="1" max="<?=$product['quantity']?>" placeholder="Quantity" required>
            <input type="hidden" name="product_id" value="<?=$product['id']?>">
            <input type="submit" value="Ajouter au panier">
        </form>
        <div class="description">
            <?=$product['desc']?>
        </div>
    </div>
</div>
</div>
<?=template_footer()?>