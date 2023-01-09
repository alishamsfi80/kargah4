<?php include('header.php');
include('function.php');
$new_price = $_POST['new_price'];
$id = $_SESSION['edit_room'];
if (check($new_price))
{
    $link = mysqli_connect("localhost", "root", "", "hotel");

    if (mysqli_connect_errno())
    exit("خطاي با شرح زير رخ داده است :" . mysqli_connect_error());
    $query = "UPDATE room SET price='$new_price' WHERE id='$id'";
    if (mysqli_query($link, $query) === true) {
        echo "<p style='color:red;'><b>تغییر قیمت با موفقیت انجام شد</b></p>";
    }
    else
    {
        echo "<p style='color:red;'><b>تغییر قیمت انجام نشد</b></p>";
    }
} else
    exit("برخی فیلد ها مقدار دهی نشده اند");
 ?>
<div class="header">
    
</div>
<?php

 include('footer.php'); ?>