<?php include('header.php');
include('function.php'); ?>
<div class="header">
<?php
$input_day = $_SESSION['input_day'];
$output_day = $_POST['output_day'];
$room_id = $_SESSION['room_id'];
$user_id = $_SESSION["id"];
$link = mysqli_connect("localhost", "root", "", "hotel");

if (mysqli_connect_errno())
    exit("خطاي با شرح زير رخ داده است :" . mysqli_connect_error());
$s = 0;
for ($co = $input_day; $co < $output_day;$co++)
{
    $kk = 1;
    $kt = 0;
    $query = "UPDATE room_rezerv SET rezerv='$kk',user_id='$user_id' WHERE rezerv='$kt' And room_id='$room_id' And day='$co'";
    if (mysqli_query($link, $query) === true) {

}
else
{
        $s = 1;
}
}
if ($s==0)
{
    echo "<p style='color:red;'><b>رزرو با موفقیت انجام شد</b></p>";
    
}
else
{
    echo "<p style='color:red;'><b>متاسفیم رزرو انجام نشد</b></p>";
}  

?>
</div>
<?php include('footer.php'); ?>