<!-- Main Navigation Start-->            
<nav id="nav">
    <div id="menu">
        <h3 class="menuarrow"><span>Menu</span></h3>
        <ul>
        <?php

        // Include the database connection
        include("includes/config.php");
        
        // Check if the database connection is successful
        if (isset($db_conx)) {
            // Creating query to fetch main menu from mysql database table.
            $main_menu_query = "SELECT * FROM main_menu";
            // Execute the query
            $main_menu_result = mysqli_query($db_conx, $main_menu_query);
            
            // Loop through main menu items
            while($r = mysqli_fetch_array($main_menu_result))
            {
                ?>
                <li><a href="<?php echo $r['mmenu_link'];?>" id="<?php echo $r['mmenu_id'];?>" ><?php echo $r['mmenu_name'];?></a>
                    <div>
                        <ul>
                        <?php
                        // Creating query to fetch sub menu from mysql database table.
                        $sub_menu_query = "SELECT * FROM sub_menu WHERE mmenu_id=".$r['mmenu_id'];
                        // Execute the query
                        $sub_menu_result = mysqli_query($db_conx, $sub_menu_query);
                        // Loop through sub menu items
                        while($r1 = mysqli_fetch_array($sub_menu_result))
                        {
                            ?>
                            <li><a href="<?php echo $r1['smenu_link'];?>?Items=<?php echo $r1['0'];?>&Subname=<?php echo $r1['2'];?>&MenuCat=<?php echo $r1['1'];?>"><?php echo $r1['smenu_name'];?></a></li>
                            <?php 
                        } 
                        ?>
                        </ul>
                    </div>
                </li>
                <?php
            }
        } else {
            // Database connection error message
            echo "Failed to connect to the database.";
        }
        ?>

        </ul>
    </div>
</nav>
<!-- Main Navigation End-->
