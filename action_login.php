<?php include('header.php');
include('function.php'); ?>

<div class="header">
    <?php
    if (check($_POST['email']) && check($_POST['password'])) {

        $email = $_POST['email'];
        $password = $_POST['password'];
    } else
        exit("برخی از فیلد ها مقدار دهی نشده است");
    $link = mysqli_connect("localhost", "root", "", "hotel");

    if (mysqli_connect_errno())
        exit("خطاي با شرح زير رخ داده است :" . mysqli_connect_error());


    $query = "SELECT * FROM user WHERE email='$email' AND password='$password'";
    $result = mysqli_query($link, $query);

    $row = mysqli_fetch_array($result);
    if ($row) {
        $_SESSION["login"] = true;
        $_SESSION["id"] = $row['id'];
        if ($row['is_admin']) {
            $_SESSION["admin"] = true;
        }
        ?>
        <br /><br /><br /><br />
        <div class="loginactionparent">
            <div id="loginaction" class="animate__animated animate__wobble">
                <br />
                <p>با موفقیت وارد شدید</p>
                <button class="btn btn-warning" onclick="window.location.href='index.php';">ادامه رزرو </button>
            </div>
        </div>
        <?php
    } else {
        ?>
        <br /><br /><br /><br />
        <div class="loginactionparent">
            <div id="loginaction2" class="animate__animated animate__wobble">
                <br />
                <p>نام کاربری یا رمز عبور اشتباه است</p>
                <button class="btn btn-warning" onclick="window.location.href='login.php';"> بازگشت به صفحه ورود </button>
            </div>
        </div>
        <?php
        // echo ("<p style='color:red;'><b>نام كاربري يا كلمه عبور يافت نشد</b></p>");
    }
    mysqli_close($link);

    ?>
</div>
<?php include('footer.php'); ?>