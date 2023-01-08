<?php include('header.php');
 if (!(isset($_SESSION['login'])&&$_SESSION['login']))
 {

    echo "<div class=\"header\">";
    echo "<p style='color:red;'><b>ابتدا وارد سایت شوید</b></p>"; 
    echo "<a href=\"login.php\" style=\"color: yellowgreen;\"وارد سایت شوید</a>";
    echo "</div>";
 }
 else {
    
 
?>
<div class="header">
    <br /><br />
    <br /><br />
    <div class="reservebox">
        <br /><br />
        <div class="bookcombo">
            <label style="margin-right: 10px; color: white;">روز ورود خود را انتخاب کنید : </label>
            <select>
                <option value="enterday">روز ورود</option>
                <option value="saturday">شنبه</option>
                <option value="sunday">یکشنبه</option>
                <option value="monday">دوشنبه</option>
                <option value="tuesday">سه شنبه</option>
                <option value="wednesday">چهارشنبه</option>
                <option value="thursday">پنج شنبه</option>
                <option value="friday">جمعه</option>
            </select>
        </div>
        <br /><br />
        <div class="bookcombo">
            <label style="margin-right: 10px; color: white;">روز خروج خود را انتخاب کنید : </label>
            <select>
                <option value="exitday">روز خروج</option>
                <option value="saturday">شنبه</option>
                <option value="sunday">یکشنبه</option>
                <option value="monday">دوشنبه</option>
                <option value="tuesday">سه شنبه</option>
                <option value="wednesday">چهارشنبه</option>
                <option value="thursday">پنج شنبه</option>
                <option value="friday">جمعه</option>
            </select>
        </div>
        <br />
        <center><button type="button" class="btn btn-success">تایید</button></center>

        <br /><br /><br />
        <div class="bookprice">
            <label style="margin-right: 20px; color: white;">قیمت نهایی :</label>
            <label style="color:white;">500</label>
        </div>

        <br />
        <center><button type="button" class="btn btn-success">پرداخت</button></center>


    </div>
</div>
<?php 
}include('footer.php'); ?>