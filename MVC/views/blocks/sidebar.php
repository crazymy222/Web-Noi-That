<div class="sidebar col-3">
        <div class="sidebar-name">
            <h3 class="text-black text-bold">Category</h3>
        </div>
        <hr>
        <ul>
            <li><a href="product">All</a></li>
            <?php
                while($row=mysqli_fetch_array($data["categories"])){
                    echo '<li><a href="product/category/'.$row["id"].'">'.$row["name"].'</a></li>';
                }               
            ?>            
        </ul>
    </div>