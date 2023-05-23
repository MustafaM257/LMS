<?php

if (!isset($_SESSION)) {
    session_start();
}

include_once "./dbConnection.php";
include "./mainInclude/header.php";
?>
<!-- Header End  -->

<!-- Start Course Page Banner  -->
<div class="container-fluid bg-dark">
    <div class="row">
        <img src="./image/coursebanner.png" alt="courses" style="height:500px; width: 100%; object-fit:cover; box-shadow: 10px;">
    </div>
</div>
<!-- End Course Page Banner  -->
<h1 class="text-center mt-5">Validating payment method</h1>
<div class="container jumbotron pb-4" style="margin-top: 2rem">
    <div class="row justify-content-around">
        <?php
        $orderid =  $_POST["ORDER_ID"];
        $email = $_POST["CUST_ID"];
        $price = $_POST["TXN_AMOUNT"];
        $courseid = $_POST["COURSE_ID"];
        $sql = "SELECT * FROM courseorder WHERE course_id = '" . $courseid .  "' AND stu_email = '" . $email . "'";  // to check if course already purchased
        $message= "";
        $result = $conn->query($sql);
        if($result->num_rows == 0) {
            $message = "<h2>Payment Complete! Happy learning</h2>";
            
            $sql2 = "INSERT INTO courseorder (order_id,stu_email,course_id,amount) VALUES ('$orderid' , '$email' , '$courseid' , '$price')";
            $result = $conn->query($sql2);
        }
        else
        {
            $message = "<h3>Failed to purchase the course, please revalidate and try again </h3>";
        }
        echo $message;
        header("refresh:3; url=Student/myCourse.php");
        
        ?>
    </div>
    <hr />
</div>
<?php include "./mainInclude/footer.php";
?>