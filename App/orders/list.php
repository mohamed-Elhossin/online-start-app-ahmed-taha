<?php
// ============= Vendor ==========
include_once '../../vendor/config.php';
include_once '../../vendor/functions.php';
// ============= Shared ==========
include_once '../../shared/head.php';
include_once '../../shared/navbar.php';
$count = 0;

// Query 
$select = "SELECT * FROM orders ";
$orders =  mysqli_query($conn, $select); // Run Query

// Delete Query

if (isset($_GET['delete'])) {
    $id =  $_GET['delete'];
    $delete = "DELETE FROM orders where id =$id";
    $d = mysqli_query($conn, $delete);
    redirct('App/orders/list.php');
}


?>


<div class="container col-md-8 my-5">
    <div class="row my-2">
        <div class="col-md-8">
            <h6> List Order </h6>
        </div>
        <div class="col-md-4">
            <div class="d-grid">
                <a href="./create.php" class="float-end btn btn-info"> <i class="float-start fa-solid fa-folder-plus"></i>Create New </a>
            </div>
        </div>
    </div>
    <div class="card">

        <div class="card-body">
            <table class="table table-dark">
                <tr>
                    <th>#NO</th>
                    <th>Order-ID</th>
                    <th> Product-ID </th>
                    <th> Customer-ID </th>
                    <th> Amount</th>
                    <th colspan="3"> Action </th>
                </tr>

                <?php foreach ($orders as $item) : ?>
                    <tr>
                        <th> <?= ++$count ?> </th>
                        <th> <?= $item['id'] ?> </th>
                        <th> <?= $item['product_id'] ?> </th>
                        <th> <?= $item['customer_id'] ?> </th>
                        <th> <?= $item['amount'] ?> </th>

                        <th> <a href="./show.php?show=<?= $item['id'] ?>"><i class="fa-solid fa-eye"></i></a> </th>
                        <th> <a href="./edit.php?edit=<?= $item['id'] ?>"><i class="text-warning fa-solid fa-pen-to-square"></i></a> </th>

                        <th> <a onclick="return confirm('are you Sure')" href="./list.php?delete=<?= $item['id'] ?>"><i class="text-danger fa-solid fa-trash-can"></i></a> </th>

                    </tr>
                <?php endforeach; ?>
            </table>
        </div>
    </div>
</div>


<?php
include_once '../../shared/script.php';

?>