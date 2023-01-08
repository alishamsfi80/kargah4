<?php include('header.php'); ?>

<div class="header">
    <br /><br /><br />
    <form class="registerform" name="registerform" action="action_register.php" method="post">

        <div class="form-group">
            <label style="color: white;">نام :</label>
            <input type="text" name="first_name" class="form-control" placeholder="نام را وارد کنید">
        </div>
        <br />
        <div class="form-group">
            <label style="color: white;">نام خانوادگی :</label>
            <input type="text" name="last_name" class="form-control" placeholder="نام خانوادگی را وارد کنید">
        </div>
        <br />
        <div class="form-group">
            <label style="color: white;">کدملی :</label>
            <input type="text" name="national_code" class="form-control" placeholder="کدملی را وارد کنید">
        </div>
        <br />
        <div class="form-group">
            <label style="color: white;">ایمیل :</label>
            <input type="text" name="email" class="form-control" placeholder="ایمیل را وارد کنید">
        </div>
        <br />
        <div class="form-group">
            <label style="color: white;">شماره تلفن :</label>
            <input type="text" name="phone_number" class="form-control" placeholder="شماره تلفن را وارد کنید">
        </div>
        <br />
        <div class="form-group">
            <label for="exampleInputPassword1" style="color: white;">رمز عبور:</label>
            <input name="password" type="password" class="form-control" id="exampleInputPassword1"
                placeholder="رمز خود را وارد کنید">
        </div>
        <br />
        <div class="form-group">
            <label for="exampleInputPassword1" style="color: white;">تکرار رمز عبور :</label>
            <input name="repassword" type="password" class="form-control" id="exampleInputPassword1"
                placeholder="رمز خود را تکرار کنید">
        </div>
        <br />
        <center><button type="submit" class="btn btn-primary">ثبت نام</button></center>
    </form>
</div>

<?php include('footer.php'); ?>