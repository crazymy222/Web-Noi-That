<div class="container-fluid row nowrap">
    <?php
    require_once "./MVC/views/blocks/sidebar.php";
    ?>
    <div class="product-box col-9">
        <div class="category-title">
            <?php
            $url = explode("/", filter_var(trim($_GET["url"], "/")));
            if (isset($url[2])) {
                while ($row = mysqli_fetch_array($data["categoryName"])) {
                    echo '<h2>' . $row["name"] . '</h2>';
                }
            } else {
                echo '<h2>All</h2>';
            }


            ?>
        </div>
        <div class="products row pd-30">
            <?php
            while ($row = mysqli_fetch_array($data["products"])) {
                $sale = $row["sale"] * 100;
                $price = (1 - $row["sale"]) * $row["price"];
                echo '<a href="#">
                    <div class="item col-4 row">
                        <div class="product-img col-12">
                            <img src="public/images/' . $row["img"] . '" alt="">';

                if ($sale > 0) {
                    echo '<div class="sale">-' . $sale . '%</div>';
                }
                echo '</div>
                        <p class="product-name col-12 text-center text-black">' . $row["name"] . '</p>
                        <p class="product-price col-12 text-center text-black">$' . $price . '</p>
                    </div>
                </a>';
            }
            ?>
        </div>
    </div>
</div>