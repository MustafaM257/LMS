<!-- Start Contact Us  -->
<!-- Handling the mail built in function -->
 <?php
 //configuring the phpmailer files imports 
    use phpmailer\PHPMailer\PHPMailer;
    use phpmailer\PHPMailer\Exception;

    require 'phpmailer/src/Exception.php';
    require 'phpmailer/src/PHPMailer.php';
    require 'phpmailer/src/SMTP.php';
    $response = "";
    // name $_POST["name"]
    // subject $_POST["subject"]
    // email $_POST["email"]
    // message $_POST["message"]
    // mailSubmit $_POST["mailSubmit"]
    if(isset($_POST["mailSubmit"])){
        if(
               isset($_POST["name"])
            && isset($_POST["subject"])
            && isset($_POST["email"])
            && isset($_POST["message"])
            ){
                $name = $_POST['name'];
                $email = $_POST['email'];
                $message = $_POST['message'];
                $subject = $_POST['subject'];
                // initializing the php mailer variables
                if($name != "" && $email != "" && $message != "" && $subject != ""){
                $mail = new PHPMailer(true);
                $mail->isSMTP();
                $mail->Host="smtp.gmail.com";
                $mail->SMTPAuth = true;
                $mail->Username = "thesteve257@gmail.com";
                $mail->Password = 'ebaqgtdqohqqatyz';
                $mail->SMTPSecure = 'ssl';
                $mail->Port = 465;
                $mail->setFrom('thesteve257@gmail.com');
                $mail->addAddress($email);
                $mail->isHTML(true);
                $mail->Subject = $subject;
                $mail->Body = $message;
                $mail->send();
                //end of initialization of php mailer variables 
                $response = '<div class="alert alert-success my-3" style="width: 210px;margin: auto;text-align: center;">Mail Sent Successfully</div>';
                // Email is send successfully by here 
            }
            else
            {
                $response = '<div class="alert alert-danger my-3" style="width: 210px;margin: auto;text-align: center;">Failed to Send</div>';
            }
                 
        }
                 
    }
 ?>
<!-- End Handling the mail built in function -->
<div class="container mt-4" id="contact">
    <!-- Start Contact Container  -->
    <h2 class="text-center mb-4">Contact US</h2>
    <!-- Contact Us Heading  -->
    <div class="row"> <!-- Start Contact Us Row  -->
        <div class="col-md-8">
            <form action="" method="POST">
                <input type="text" id="username" name="name" class="form-control" placeholder="Enter Name" style="text-transform: capitalize">
                <br>
                <input type="text" id="subject" name="subject" class="form-control" placeholder="Enter Subject" style="text-transform: lowercase">
                <br>
                <input type="email" id="useremail" name="email" class="form-control" placeholder="Enter Email" style="text-transform: lowercase">
                <br>
                <textarea name="message" id="message" cols="25" rows="10" class="form-control" placeholder="How can we help you?" style="min-height: 180px; max-height: 350px"></textarea><br>
                <input type="submit" class="btn btn-primary" value="Send" name= "mailSubmit">
                <br><br>
            <?php echo $response; ?> 
                       <!--  The response carries the mail response about if it was sent or not-->
            </form>
        </div><!-- End Contact Us 1st Column  -->

        <div class="col-md-4 stripe p-4 text-white text-center">
            <!-- Start Contact Us 2nd Column  -->
            <h4>Learnify</h4>
            <p>
                Lebanese University Tutors!,<br>
                Mustafa Al Muhammad & Amal Darweesh,
                <br>
                Lebanon - Beirut
                <br>
                Emails:<br>
                <a href="mailto:mustafa.almuhammad@st.ul.edu.lb" style="color: #9dff8c">mustafa.almuhammad@st.ul.edu.lb</a>
                <a href="mailto:amal.darweesh@st.ul.edu.lb" style="color: #9dff8c">amal.darweesh@st.ul.edu.lb</a>
            </p>
        </div><!-- End Contact Us 2nd Column  -->
    </div><!-- End Contact Us Row  -->
</div><!-- End Contact Us Container -->
<!-- End Contact Us -->