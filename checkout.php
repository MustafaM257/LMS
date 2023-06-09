<!-- Header Star  -->
<?php
session_start();
include_once "./dbConnection.php";

if (!isset($_SESSION["is_login"])) {
    echo "<script>window.location.href='loginorsignup.php'</script>";
} else {

    $stuEmail = $_SESSION["stuLogEmail"];
    if (!isset($_SESSION["course_id"])) {
        $_SESSION["course_id"] = $_GET["course_id"];
    }
}
?>
<!-- Header End  -->
<!-- I sent to this page course id and course price -->


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="GENERATOR" content="Evrsoft First Page">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS  -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- Google Font  -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700">

    <!-- Custom CSS  -->
    <link rel="stylesheet" href="css/style.css">
    <title>Learnify Checkout Page</title>

    <!-- OWL Carouse CSS  -->
    <link rel="stylesheet" href="css/carousel.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>

<body>

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-sm-6 jumbotron">
                <h3 class="mb-5">Welcome to Learnify Payment Page</h3>
                <form method="post" action="paymentcheck.php">
                    <div class="form-group row">
                        <label for="ORDER_ID" class="col-sm-4 col-form-label">Order ID</label>
                        <div class="col-sm-8">
                            <input id="ORDER_ID" class="form-control" tabindex="1" maxlength="20" size="20" name="ORDER_ID" autocomplete="off" value="<?php echo "ORDS" . rand(10000, 99999999); ?>" readonly>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="CUST_ID" class="col-sm-4 col-form-label">Student Email</label>
                        <div class="col-sm-8">
                            <input id="CUST_ID" class="form-control" tabindex="2" |maxlength="12" size="12" name="CUST_ID" autocomplete="off" value="<?php if (isset($stuEmail)) {
                                                                                                                                                            echo $stuEmail;
                                                                                                                                                        } ?>" readonly>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="TXN_AMOUNT" class="col-sm-4 col-form-label">Amount</label>
                        <div class="col-sm-8">
                            <input title="TXN_AMOUNT" class="form-control" tabindex="3" type="text" name="TXN_AMOUNT" value="<?php if (isset($_GET["course_price"])) {
                                                                                                                                    echo $_GET["course_price"];
                                                                                                                                } ?>" readonly>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="COURSE_ID" class="col-sm-4 col-form-label">Course ID</label>
                        <div class="col-sm-8">
                            <input title="COURSE_ID" class="form-control" tabindex="4" type="text" name="COURSE_ID" value="<?php if (isset($_GET["course_id"])) {
                                                                                                                                    echo $_GET["course_id"];
                                                                                                                                } ?>" readonly>
                        </div>
                    </div>
                    <small class="form-text text-muted mb-3">Note: Complete Payment by clicking Checkout Button</small>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary" name="pay-submit" onclick="">Checkout</button>
                        <a href="./courses.php" class="btn btn-secondary" role="btn">Cancel</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>

</html>