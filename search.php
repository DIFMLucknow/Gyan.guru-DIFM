<?php include './action/db_connect.php' 

?>
<!DOCTYPE html>

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="assets/css/style.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Eduprix</title>


</head>

<body>
    <?php include 'header.php'; ?>


    <div class="container topcourse" style="margin-top:100px;">
        <div class="row row-cols-1 row-cols-md-4 g-4 mt-5">


            <?php

            if (isset($_GET['search'])) {
                $filtervalues = $_GET['search'];
                $query = mysqli_query($con, "SELECT * FROM category WHERE category LIKE '%$filtervalues%' ");

                if ($query == true) {
                    echo "<h1 style='background-color: #02292C;padding-top: 96px;text-align: center;color: #bf925c;'>Courses of: " . htmlspecialchars($filtervalues) . "</h1>";



                    while ($row = mysqli_fetch_array($query)) {
                        $data = mysqli_query($con, "SELECT * FROM posts WHERE  category LIKE '%$filtervalues%'" );
                        while ($res = mysqli_fetch_array($data)) { ?>




                            <div class="col">
                                <div class="card cardborder">
                                    <img src='<?php echo 'assets/imgs/' . $res['image']; ?>' class="card-img-top" alt="..." style="height: 245px;">
                                    <div class="card-body">
                                        <a href="coursedetails.php?id=<?php echo $res['id']; ?>">
                                            <button type="button" class="btn btn-primary position-relative bgi">
                                                VIEW COURSE
                                                <span class="position-absolute top-100 start-100 translate-middle badge">
                                                    Free
                                                    <span class="visually-hidden">unread messages</span>
                                                </span>
                                            </button>
                                        </a>
                                        <h5 class="card-title"><?php echo $res['title'] ?></h5>
                                        <!-- <p class="card-text"><?php echo $res['desc'] ?></p> -->
                                    </div>
                                </div>

                            </div>



                        <?php } ?>


            <?php

                    }
                } else {
                    echo "<h2>No results found for: " . htmlspecialchars($filtervalues) . "</h2>"; // Display the search term
                }
            }

            ?>
        </div>



    </div>


    <?php include 'footer.php' ?>

    <script>
        const openSidebar = () => {
            document.getElementById("mySidebar").style.width = "250px";
            document.getElementById("main").style.marginLeft = "250px";
        };

        const closeSidebar = () => {
            document.getElementById("mySidebar").style.width = "0";
            document.getElementById("main").style.marginLeft = "0";
        };
        const opend = () => {
            document.getElementById("mySlidebar").style.width = "250px";
            document.getElementById("main").style.marginLeft = "250px";
        };

        const closeSlidebar = () => {
            document.getElementById("mySlidebar").style.width = "0";
            document.getElementById("main").style.marginLeft = "0";
        };
    </script>
</body>

</html>