<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>وزارة التربية والتعليم</title>
</head>
<body style="direction: rtl;">
<?php include('config.php');
$sql_query = "SELECT * FROM `test` WHERE id=".$_POST['id'];
if ($result=mysqli_query($con,$sql_query))
{


?>

<div class="container">
    <div class="row grow w-100">
        <div class="col-12 bg-primary py-3">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#"><img src="sudan.png" alt="" width="150" height="80"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="index.html">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="upload.php">import</a>
                        </li>


                    </ul>

                </div>
            </nav>






        </div>
        <div class="main col-12 bg-light h-100 py-3">
            <div class="col-12">
                <form class="form-inline my-2 my-lg-12" action="search.php" method="post">
                    <input class="form-control mr-sm-2" name="id" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-2" type="submit">Search</button>
                </form>
            </div>

            <?php
            while ($currency_list = mysqli_fetch_assoc($result))
            {
            ?>

            <div class="col-12">
                <div class="col-12">
                    <table class="table" border="1">
                        <tr>
                            <th scope="col-4">الإسم الطالب :</th>
                            <td scope="row"><?php echo $currency_list['name'];?></td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="col-12">
                <table class="table" border="1">

                    <tr>
                        <th scope="col">اللغة الانجليزية</th>

                        <td scope="row"><?php echo $currency_list['English'];?></td>
                    </tr>
                    <tr>
                        <th scope="col">اللغة العربية</th>

                        <td scope="row"><?php echo $currency_list['Arabic'];?></td>
                    </tr>
                    <tr>
                        <th scope="col">التربية الاسلامية</th>

                        <td scope="row"><?php echo $currency_list['Quaran'];?></td>
                    </tr>
                    <tr>
                        <th scope="col">الرياضيات </th>

                        <td scope="row"><?php echo $currency_list['mathmatic'];?></td>
                    </tr>
                    <tr>
                        <th scope="col">الفيزياء</th>

                        <td scope="row"><?php echo $currency_list['physic'];?></td>
                    </tr>
                    <tr>
                        <th scope="col">الكيمياء</th>

                        <td scope="row"><?php echo $currency_list['chemical'];?></td>
                    </tr>
                    <tr>
                        <th scope="col">الهندسية</th>

                        <td scope="row"><?php echo $currency_list['Engineering'];?></td>
                    </tr>

                </table>
            </div>
            <div class="col-12">
                <div class="col-12">
                    <table class="table" border="1">
                        <tr>
                            <th scope="col-4">الدرجة :</th>

                            <td scope="row"><?php echo $currency_list['total'];?>%  <?php echo $currency_list['result'];?> </td>
                        </tr>
                    </table>
                </div>
            </div>
            <?php
            }}
            ?>
        </div>
    </div>










    <div class="row w-100">
        <div class="col-12 py-3 bg-primary">
            Footer
        </div>
    </div>





</div>


<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
-->
</body>
</html>
