<div class="intro">
    <div class="shop-now">
        <div class="item-1 text-black">
            <p class="text-1">NEW ARRIVA</p>
            <p class="text-2">Finding the focal points</p>
        </div>
        <a href="product">
            <div class="item-2 text-black">SHOP NOW</div>
        </a>
    </div>
</div>
<div class="container pt-90">
    <div class="session-1">
        <div class="row nowrap">
            <div class="item-1 col-6"></div>
            <div class="item-2 col-6 text-black">
                <p class="text-1">ABOUT US</p>
                <p class="text-2">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eius voluptate minima impedit tempore dolores?
                    Totam adipisci quia praesentium vero? Doloremque doloribus vero incidunt corrupti aliquid architecto quas tenetur consectetur
                    dolor! Totam adipisci quia praesentium vero? Doloremque doloribus vero incidunt corrupti aliquid architecto quas tenetur consectetur
                    dolor!</p>
            </div>
        </div>
    </div>
    <div class="session-2">
        <div class="category row">
            <p class="title text-center text-black col-12">CATEGORY</p>
            <div class=" col-12 row">
                <?php
                while ($row = mysqli_fetch_array($data["categories"])) {
                    echo '<a href="#">
                    <div class="col-3 item row">
                        <div class="category-img"><img src="public/images/' . $row["img"] . '" alt=""></div>
                        <p class="category-name text-black">' . $row["name"] . '</p>
                    </div>
                </a>';
                }
                ?>
            </div>
        </div>
    </div>
    <div class="session-3">
        <div class="products row">
            <p class="title col-12 text-black text-center">SALE PRODUCT</p>
            <div class="row col-12">
                <?php
                // var_dump(json_decode($data["productsSale"]));
                // $row = json_decode($data["productsSale"]);                
                // foreach ($row as $k ) {
                //     $sale = $k["sale"] * 100;
                //     $price = (1 - $k["sale"]) * $k["price"];
                //     echo '<a href="#">
                //     <div class="item col-4 row">
                //         <div class="product-img col-12">
                //             <img src="public/images/' . $k["img"] . '" alt="">
                //             <div class="sale">-' . $sale . '%</div>
                //         </div>
                //         <p class="product-name col-12 text-center text-black">' . $k["name"] . '</p>
                //         <p class="product-price col-12 text-center text-black">$' . $price . '</p>
                //     </div>
                // </a>';
                // }
                ?>
            </div>
        </div>
    </div>
</div>