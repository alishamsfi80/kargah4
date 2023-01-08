<?php include('header.php');
include('function.php'); ?>

<div class="header">
<?php
//echo $_POST['email'];
if (check ($_POST['first_name']) && 
check ($_POST['last_name']) && 
check ($_POST['national_code']) &&
check ($_POST['email']) &&
check ($_POST['phone_number']) && 
check ($_POST['password'])&&
check ($_POST['repassword']))
{
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $national_code = $_POST['national_code'];
    $email = $_POST['email'];
    $phone_number = $_POST['phone_number'];
    $password = $_POST['password'];
    $repassword = $_POST['repassword'];
}
else
    exit("برخی از فیلد ها مقدار دهی نشده است");
if ($password != $repassword)
    exit("كلمه عبور و تكرار آن مشابه نيست");

if (filter_var($email, FILTER_VALIDATE_EMAIL) === false)
    exit("پست اكترونيك وارد شده صحيح نیست");
$link = mysqli_connect("localhost", "root", "", "hotel");

if (mysqli_connect_errno())
    exit("خطاي با شرح زير رخ داده است :" . mysqli_connect_error());
    
$query = "INSERT INTO user (first_name,last_name,national_code,email,phone_number,password) VALUES ('$first_name','$last_name','$national_code','$email','$phone_number','$password')";
if (mysqli_query($link, $query) === true) {
    echo ("<p style='color:red;'><b>شما با موفقیت ثبت نام شدید </b></p>"); 
         echo "<a href=\"login.php\" style=\"color: yellowgreen;\">وارد شوید</a>";
}
else
    echo ("<p style='color:red;'><b>عضويت شما در فروشگاه انجام نشد</b></p>");

mysqli_close($link);
?>
</div>
<?php include('footer.php'); ?>