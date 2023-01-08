<?php include('header.php');
include('function.php');
$_SESSION['room_id'] = $_GET['id'];

if (!(isset($_SESSION['login']) && $_SESSION['login'])) {
    $_SESSION["logincheck"] = "لطفا ابتدا وارد سایت شوید.";
    header("location:login.php");
    // echo "<div class=\"header\">";
    // echo "<p style='color:red;'><b>ابتدا وارد سایت شوید</b></p>";
    // echo "<a href=\"login.php\" style=\"color: yellowgreen;\"> وارد سایت شوید</a>";
    // echo "</div>";

} else {


    ?>
    <div class="header">
        <?php

        if (!(isset($_POST['input_day']) && isset($_POST['output_day'])) && !isset($_POST['form1'])) {
            $link = mysqli_connect("localhost", "root", "", "hotel");
            $room_id = $_SESSION['room_id'];
            if (mysqli_connect_errno())
                exit("خطاي با شرح زير رخ داده است :" . mysqli_connect_error());

            $query = "SELECT rezerv FROM room_rezerv WHERE room_id='$room_id'";
            $result = mysqli_query($link, $query);
            $counter = 0;
            while ($row[$counter] = mysqli_fetch_array($result)) {
                $counter++;
            }
            ?>
            <div class="reservebox">
                <br /><br />
                <form action="" method="post">
                    <div class="bookcombo">
                        <label style="margin-right: 10px; color: white;">روز ورود خود را انتخاب کنید : </label>
                        <select name='input_day'>
                            <option value="enterday">روز ورود</option>
                            <?php
                            for ($count_value = 1; $count_value <= 7; $count_value++) {
                                if ($row[$count_value - 1]['rezerv'] == 0)
                                    echo "<option value=$count_value>$count_value</option>";
                            }
                            ?>

                        </select>
                        <input type="hidden" name="form1" value="1">
                    </div>
                    <br />
                    <center><button type="submit" name="submit" class="btn btn-success">تایید</button></center>
                </form>
                <br /><br />



            </div>
            <?php
        }
        //echo isset($_POST['input_day']);
        if ((isset($_POST['input_day'])) && !(isset($_POST['output_day']))) {
            $_SESSION['input_day'] = $_POST['input_day'];
            $input_day = $_SESSION['input_day'];
            $link = mysqli_connect("localhost", "root", "", "hotel");
            $room_id = $_SESSION['room_id'];
            if (mysqli_connect_errno())
                exit("خطاي با شرح زير رخ داده است :" . mysqli_connect_error());

            $query = "SELECT rezerv FROM room_rezerv WHERE room_id='$room_id'";
            $result = mysqli_query($link, $query);
            $counter = 0;
            while ($row[$counter] = mysqli_fetch_array($result)) {
                $counter++;
            }
            ?>
            <div class="reservebox">
                <br /><br />
                <form action="action_booking.php" method="post">
                    <div class="bookcombo">
                        <label style="margin-right: 10px; color: white;">روز خروج خود را انتخاب کنید : </label>
                        <select name='output_day'>
                            <option value="enterday">روز حروج</option>
                            <?php
                            for ($count_value = $input_day + 1; $count_value <= 7; $count_value++) {

                                if ($row[$count_value - 1]['rezerv'] == 0) {
                                    echo "<option value=$count_value>$count_value</option>";
                                } else {
                                    echo "<option value=$count_value>$count_value</option>";
                                    break;
                                }
                            }
                            ?>

                        </select>

                    </div>
                    <br />
                    <center><button type="submit" name="submit" class="btn btn-success">تایید</button></center>
                </form>
                <br /><br />



            </div>

            ?>

            <?php
        }
        ?>

        ?>
    </div>
    <?php
}
mysqli_close($link);
include('footer.php'); ?>