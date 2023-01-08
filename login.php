<?php include('header.php'); ?>
<div class="header">
    <br /><br /><br />
    <br /><br /><br />
    <form class="loginform" action="action_login.php" method="post">
        <?php if (isset($_SESSION["logincheck"])) {
            ?>
            <center>
                <p class="logincheckp" style="color: white;"> <?php echo $_SESSION["logincheck"] ?> </p>
            </center>
            <?php
            unset($_SESSION["logincheck"]);
        }
        ?>
        <div class="form-group">
            <label style="color: white;">ایمیل :</label>
            <input type="text" name="email" class="form-control" placeholder="ایمیل را وارد کنید">
        </div>
        <br />
        <br />
        <div class="form-group">
            <label for="exampleInputPassword1" style="color: white;">رمز :</label>
            <input name="password" type="password" class="form-control" id="exampleInputPassword1"
                placeholder="رمز خود را وارد کنید">
        </div>
        <br />
        <br />
        <center><button type="submit" class="btn btn-primary">ورود</button></center>
        <br />
        <a href="register.php" style="color: yellowgreen;">آیا هنوز ثبت نام نکرده‌اید؟</a>
    </form>
</div>
<?php include('footer.php'); ?>