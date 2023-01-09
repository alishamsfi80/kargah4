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
            $s=1;
        }
    }
    if ($s==0)
    {
        echo "<p style='color:red;'><b>افزودن اتاق با موفقیت انجام شد</b></p>";
    }
    else
    {
        echo ("Error description: " . $link->error);
        
        echo "<p style='color:red;'><b>افزودن اتاق انجام نشد</b></p>";
    }
}
?>
