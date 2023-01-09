<?php include('header.php');
include('function.php');

$price_add = $_POST['price_add'];
$capacity_add = $_POST['capacity_add'];
if (check ($price_add) && check ($capacity_add))
{
    $link = mysqli_connect("localhost", "root", "", "hotel");

    if (mysqli_connect_errno())
    exit("خطاي با شرح زير رخ داده است :" . mysqli_connect_error());
    $query = "INSERT INTO room (capacity,price) values ('$capacity_add','$price_add')";
    if (mysqli_query($link, $query) === true) {
        
        
        include("test_rezerv.php");
    }
    else
    {
        echo ("Error description: " . $link->error);
        
        echo "<p style='color:red;'><b>افزودن اتاق انجام نشد</b></p>";
    }

}
else
    exit("برخی فیلد ها مقدار دهی نشده اند"); 

?>