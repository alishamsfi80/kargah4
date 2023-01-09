<?php include('header.php');
include('function.php'); ?>

<div class="header">
    <?php
    //echo $_POST['email'];
    if (
        check($_POST['first_name']) &&
        check($_POST['last_name']) &&
        check($_POST['national_code']) &&
        check($_POST['email']) &&
        check($_POST['phone_number']) &&
        check($_POST['password']) &&
        check($_POST['repassword'])
    ) {
        $first_name = $_POST['first_name'];
        $last_name = $_POST['last_name'];
        $national_code = $_POST['national_code'];
        $email = $_POST['email'];
        $phone_number = $_POST['phone_number'];
        $password = $_POST['password'];
        $repassword = $_POST['repassword'];
    } else {
        ?>
        <script>
            window.alert("برخی از فیلدها مقداردهی نشده‌اند");
            location.replace('register.php');
        
        </script>
        <?php
        exit();
    }
    if ($password != $repassword) {
        ?>
        <script>
            window.alert("کلمه عبور و تکرار آن مشابه نیست");
            location.replace('register.php');
        </script>
        <?php
        exit();
    }

    if (filter_var($email, FILTER_VALIDATE_EMAIL) === false) {
        ?>
        <script>
            window.alert("پست الکترونیک وارد شده صحیح نیست");
            location.replace('register.php');
        </script>
        <?php
        exit();
    }
    $link = mysqli_connect("localhost", "root", "", "hotel");

    if (mysqli_connect_errno())
        exit("خطاي با شرح زير رخ داده است :" . mysqli_connect_error());

    $query = "INSERT INTO user (first_name,last_name,national_code,email,phone_number,password) VALUES ('$first_name','$last_name','$national_code','$email','$phone_number','$password')";
    if (mysqli_query($link, $query) === true) {
        ?>
        <br /><br /><br /><br />
        <div class="loginactionparent">
            <div id="loginaction" class="animate__animated animate__wobble">
                <br />
                <p>ثبت نام با موفقیت انجام شد</p>
                <button class="btn btn-warning" onclick="window.location.href='login.php';">رفتن به صفحه ورود</button>
            </div>
        </div>
        <?php
    } else {
        ?>
        <br /><br /><br /><br />
        <div class="loginactionparent">
            <div id="loginaction2" class="animate__animated animate__wobble">
                <br />
                <p>عضویت شما انجام نشد</p>
                <button class="btn btn-warning" onclick="window.location.href='register.php';"> بازگشت به صفحه ثبت نام
                </button>
            </div>
        </div>
        <?php
    }

    mysqli_close($link);
    ?>
</div>
<?php include('footer.php'); ?>