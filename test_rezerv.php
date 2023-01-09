<?php
$max = 0;
$link = mysqli_connect("localhost", "root", "", "hotel");
if (mysqli_connect_errno())
    exit("خطاي با شرح زير رخ داده است :" . mysqli_connect_error());

$query = "SELECT max(id) as my_max FROM room";
$result = mysqli_query($link, $query);

$row = mysqli_fetch_array($result);
if ($row) {
    $my_max = $row['my_max'];
    $link2 = mysqli_connect("localhost", "root", "", "hotel");

    if (mysqli_connect_errno())
        exit("خطاي با شرح زير رخ داده است :" . mysqli_connect_error());
    $s = 0;
    for ($i = 1; $i <= 7; $i++) {
        $query2 = "INSERT INTO room_rezerv (room_id,day) values ('$my_max','$i')";
        if (mysqli_query($link2, $query2) === true) {


        } else {
            $s = 1;
        }
    }
    if ($s == 0) {
        // echo "<p style='color:red;'><b>افزودن اتاق با موفقیت انجام شد</b></p>";
        ?>
        <div class="header">
            <br /><br /><br /><br />
            <div class="loginactionparent">
                <div id="loginaction" class="animate__animated animate__wobble">
                    <br />
                    <p>اتاق با موفقیت اضافه شد</p>
                    <button class="btn btn-warning" onclick="window.location.href='admin.php';">بازگشت به صفحه‌ی اتاق
                        ها</button>
                </div>
            </div>
        </div>
        <?php
    } else {
        echo ("Error description: " . $link->error);

        ?>
        <br /><br /><br /><br />
        <div class="loginactionparent">
            <div id="loginaction2" class="animate__animated animate__wobble">
                <br />
                <p>متاسفیم اتاق اضافه نشد</p>
                <button class="btn btn-warning" onclick="window.location.href='admin.php';"> بازگشت به صفحه اتاق ها </button>
            </div>
        </div>
        <?php
    }
}
?>