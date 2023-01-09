<?php include('header.php');
include('function.php');
$new_price = $_POST['new_price'];
$id = $_SESSION['edit_room'];
if (check($new_price)) {
    $link = mysqli_connect("localhost", "root", "", "hotel");

    if (mysqli_connect_errno())
        exit("خطاي با شرح زير رخ داده است :" . mysqli_connect_error());
    $query = "UPDATE room SET price='$new_price' WHERE id='$id'";
    if (mysqli_query($link, $query) === true) {
        // echo "<p style='color:red;'><b>تغییر قیمت با موفقیت انجام شد</b></p>";
        ?>
        <div class="header">
            <br /><br /><br /><br />
            <div class="loginactionparent">
                <div id="loginaction" class="animate__animated animate__wobble">
                    <br />
                    <p>قیمت اتاق با موفقیت ویرایش شد</p>
                    <button class="btn btn-warning" onclick="window.location.href='admin.php';">بازگشت به صفحه‌ی اتاق
                        ها</button>
                </div>
            </div>
        </div>
        <?php
    } else {
        echo "<p style='color:red;'><b>تغییر قیمت انجام نشد</b></p>";
        ?>
    <div class="header">
        <br /><br /><br /><br />
        <div class="loginactionparent">
            <div id="loginaction2" class="animate__animated animate__wobble">
                <br />
                <p> هنگام تغییر قیمت خطایی رخ داده است</p>
                <button class="btn btn-warning" onclick="history.back()"> بازگشت به صفحه ویرایش قیمت </button>
            </div>
        </div>
    </div>
    <?php
    }
} else { ?>
    <div class="header">
        <br /><br /><br /><br />
        <div class="loginactionparent">
            <div id="loginaction2" class="animate__animated animate__wobble">
                <br />
                <p> برخی فیلدها مقداردهی نشده‌اند</p>
                <button class="btn btn-warning" onclick="history.back()"> بازگشت به صفحه اتاق ها </button>
            </div>
        </div>
    </div>
    <?php
}
include('footer.php'); ?>