<?php include('header.php');
$link = mysqli_connect("localhost", "root", "", "hotel");

if (mysqli_connect_errno())
    exit("خطاي با شرح زير رخ داده است :" . mysqli_connect_error());

$query = "SELECT * FROM room";             // پرس و جوي نمايش همه محصولات فروشگاه

$result = mysqli_query($link, $query);
$counter = 0;
while ($row[$counter] = mysqli_fetch_array($result)) {
    $counter++;
}
$k=0;
?>
<div class="header">
    <br />
    <br />
    <div class="row" style="direction: rtl; margin-right: 100px; overflow-y: auto ;">
<?php
for ($i=0;$i<intdiv($counter, 4);$i++)
{
    
    $test=$i*4;
    $test2=$i*4+1;
    $test3=$i*4+2;
    $test4=$i*4+3;
    ?>
   
        <div class="col-md-3" id="reservecard">
            <br /><br />
            <?php
            $v= $row[$test]['image'];
            echo "<center><img src=\"$v\" class=\"cardimg\"></center>";
            ?>
            <br />
            <h6>ظرفیت اتاق :</h6>
            <?php
            $v= $row[$test]['capacity'];
            echo "<h6> $v نفر</h6>";
            ?>
            
            <br />
            <h6>قیمت هر شب :</h6>
            <?php
            $v= $row[$test]['price'];
            echo "<h6>$v هزار نومان</h6>";
            ?>
            <br />
            <h6>توضیحات :</h6>
            <?php
            $v= $row[$test]['explain'];
            echo "<h6>$v</h6>";
            ?>
            <br /><br />
            <center>
                <!-- <button class="btn btn-danger" onclick="window.location.href='booking.php';">رزرو اتاق</button> -->
                <a class="btn btn-danger" href="booking.php?id=<?php echo $row[$test]['id'];?> ">رزرو اتاق</a>
            </center>
        </div>

        <div class="col-md-3" id="reservecard">
            <br /><br />
            <?php
            $v= $row[$test2]['image'];
            echo "<center><img src=\"$v\" class=\"cardimg\"></center>";
            ?>
            <br />
            <h6>ظرفیت اتاق :</h6>
            <?php
            $v= $row[$test2]['capacity'];
            echo "<h6> $v نفر</h6>";
            ?>
            
            <br />
            <h6>قیمت هر شب :</h6>
            <?php
            $v= $row[$test2]['price'];
            echo "<h6>$v هزار نومان</h6>";
            ?>
            <br />
            <h6>توضیحات :</h6>
            <?php
            $v= $row[$test2]['explain'];
            echo "<h6>$v</h6>";
            ?>
            <br /><br />
            <center>
                <!-- <button class="btn btn-danger" onclick="window.location.href='booking.php';">رزرو اتاق</button> -->
                <a class="btn btn-danger" href="booking.php?id=<?php echo $row[$test2]['id'];?> ">رزرو اتاق</a>
            </center>
        </div>
        <div class="col-md-3" id="reservecard">
            <br /><br />
            <?php
            $v= $row[$test3]['image'];
            echo "<center><img src=\"$v\" class=\"cardimg\"></center>";
            ?>
            <br />
            <h6>ظرفیت اتاق :</h6>
            <?php
            $v= $row[$test3]['capacity'];
            echo "<h6> $v نفر</h6>";
            ?>
            
            <br />
            <h6>قیمت هر شب :</h6>
            <?php
            $v= $row[$test3]['price'];
            echo "<h6>$v هزار نومان</h6>";
            ?>
            <br />
            <h6>توضیحات :</h6>
            <?php
            $v= $row[$test3]['explain'];
            echo "<h6>$v</h6>";
            ?>
            <br /><br />
            <center>
                <!-- <button class="btn btn-danger" onclick="window.location.href='booking.php';">رزرو اتاق</button> -->
                <a class="btn btn-danger" href="booking.php?id=<?php echo $row[$test3]['id'];?> ">رزرو اتاق</a>
            </center>
        </div>
        <div class="col-md-3" id="reservecard">
            <br /><br />
            <?php
            $v= $row[$test4]['image'];
            echo "<center><img src=\"$v\" class=\"cardimg\"></center>";
            ?>
            <br />
            <h6>ظرفیت اتاق :</h6>
            <?php
            $v= $row[$test4]['capacity'];
            echo "<h6> $v نفر</h6>";
            ?>
            
            <br />
            <h6>قیمت هر شب :</h6>
            <?php
            $v= $row[$test4]['price'];
            echo "<h6>$v هزار نومان</h6>";
            ?>
            <br />
            <h6>توضیحات :</h6>
            <?php
            $v= $row[$test4]['explain'];
            echo "<h6>$v</h6>";
            ?>
            <br /><br />
            <center>
                <!-- <button class="btn btn-danger" onclick="window.location.href='booking.php';">رزرو اتاق</button> -->
                <a class="btn btn-danger" href="booking.php?id=<?php echo $row[$test4]['id'];?> ">رزرو اتاق</a>
            </center>
        </div>
        
       
    



<?php
$k=($i+1)*4;

}
$k1=$k+1;
$k2=$k+2;
if ($counter-$k==3)
{
    ?>
    <div class="col-md-3" id="reservecard">
            <br /><br />
            <?php
            $v= $row[$k]['image'];
            echo "<center><img src=\"$v\" class=\"cardimg\"></center>";
            ?>
            <br />
            <h6>ظرفیت اتاق :</h6>
            <?php
            $v= $row[$k]['capacity'];
            echo "<h6> $v نفر</h6>";
            ?>
            
            <br />
            <h6>قیمت هر شب :</h6>
            <?php
            $v= $row[$k]['price'];
            echo "<h6>$v هزار نومان</h6>";
            ?>
            <br />
            <h6>توضیحات :</h6>
            <?php
            $v= $row[$k]['explain'];
            echo "<h6>$v</h6>";
            ?>
            <br /><br />
            <center>
             <a class="btn btn-danger" href="booking.php?id=<?php echo $row[$k]['id'];?> ">رزرو اتاق</a>
                <!-- <button class="btn btn-danger" onclick="window.location.href='booking.php';">رزرو اتاق</button> -->
            </center>
        </div>

        <div class="col-md-3" id="reservecard">
            <br /><br />
            <?php
            $v= $row[$k1]['image'];
            echo "<center><img src=\"$v\" class=\"cardimg\"></center>";
            ?>
            <br />
            <h6>ظرفیت اتاق :</h6>
            <?php
            $v= $row[$k1]['capacity'];
            echo "<h6> $v نفر</h6>";
            ?>
            
            <br />
            <h6>قیمت هر شب :</h6>
            <?php
            $v= $row[$k1]['price'];
            echo "<h6>$v هزار نومان</h6>";
            ?>
            <br />
            <h6>توضیحات :</h6>
            <?php
            $v= $row[$k1]['explain'];
            echo "<h6>$v</h6>";
            ?>
            <br /><br />
            <center>
            <a class="btn btn-danger" href="booking.php?id=<?php echo $row[$k1]['id'];?> ">رزرو اتاق</a>
                <!-- <button class="btn btn-danger" onclick="window.location.href='booking.php';">رزرو اتاق</button> -->
            </center>
        </div>

        <div class="col-md-3" id="reservecard">
            <br /><br />
            <?php
            $v= $row[$k2]['image'];
            echo "<center><img src=\"$v\" class=\"cardimg\"></center>";
            ?>
            <br />
            <h6>ظرفیت اتاق :</h6>
            <?php
            $v= $row[$k2]['capacity'];
            echo "<h6> $v نفر</h6>";
            ?>
            
            <br />
            <h6>قیمت هر شب :</h6>
            <?php
            $v= $row[$k2]['price'];
            echo "<h6>$v هزار نومان</h6>";
            ?>
            <br />
            <h6>توضیحات :</h6>
            <?php
            $v= $row[$k2]['explain'];
            echo "<h6>$v</h6>";
            ?>
            <br /><br />
            <center>
            <a class="btn btn-danger" href="booking.php?id=<?php echo $row[$k2]['id'];?> ">رزرو اتاق</a>
                <!-- <button class="btn btn-danger" onclick="window.location.href='booking.php';">رزرو اتاق</button> -->
            </center>
        </div>
        <?php
}

else if ($counter-$k==2)
{
    ?>
  <div class="col-md-3" id="reservecard">
            <br /><br />
            <?php
            $v= $row[$k]['image'];
            echo "<center><img src=\"$v\" class=\"cardimg\"></center>";
            ?>
            <br />
            <h6>ظرفیت اتاق :</h6>
            <?php
            $v= $row[$k]['capacity'];
            echo "<h6> $v نفر</h6>";
            ?>
            
            <br />
            <h6>قیمت هر شب :</h6>
            <?php
            $v= $row[$k]['price'];
            echo "<h6>$v هزار نومان</h6>";
            ?>
            <br />
            <h6>توضیحات :</h6>
            <?php
            $v= $row[$k]['explain'];
            echo "<h6>$v</h6>";
            ?>
            <br /><br />
            <center>
            <a class="btn btn-danger" href="booking.php?id=<?php echo $row[$k]['id'];?> ">رزرو اتاق</a>
                <!-- <button class="btn btn-danger" onclick="window.location.href='booking.php';">رزرو اتاق</button> -->
            </center>
        </div>

        <div class="col-md-3" id="reservecard">
            <br /><br />
            <?php
            $v= $row[$k1]['image'];
            echo "<center><img src=\"$v\" class=\"cardimg\"></center>";
            ?>
            <br />
            <h6>ظرفیت اتاق :</h6>
            <?php
            $v= $row[$k1]['capacity'];
            echo "<h6> $v نفر</h6>";
            ?>
            
            <br />
            <h6>قیمت هر شب :</h6>
            <?php
            $v= $row[$k1]['price'];
            echo "<h6>$v هزار نومان</h6>";
            ?>
            <br />
            <h6>توضیحات :</h6>
            <?php
            $v= $row[$k1]['explain'];
            echo "<h6>$v</h6>";
            ?>
            <br /><br />
            <center>
            <a class="btn btn-danger" href="booking.php?id=<?php echo $row[$k1]['id'];?> ">رزرو اتاق</a>
                <!-- <button class="btn btn-danger" onclick="window.location.href='booking.php';">رزرو اتاق</button> -->
            </center>
        </div>
<?php
}
else if ($counter-$k==1)
{
    ?>
    <div class="col-md-3" id="reservecard">
            <br /><br />
            <?php
            $v= $row[$k]['image'];
            echo "<center><img src=\"$v\" class=\"cardimg\"></center>";
            ?>
            <br />
            <h6>ظرفیت اتاق :</h6>
            <?php
            $v= $row[$k]['capacity'];
            echo "<h6> $v نفر</h6>";
            ?>
            
            <br />
            <h6>قیمت هر شب :</h6>
            <?php
            $v= $row[$k]['price'];
            echo "<h6>$v هزار نومان</h6>";
            ?>
            <br />
            <h6>توضیحات :</h6>
            <?php
            $v= $row[$k]['explain'];
            echo "<h6>$v</h6>";
            ?>
            <br /><br />
            <center>
            <a class="btn btn-danger" href="booking.php?id=<?php echo $row[$k]['id'];?> ">رزرو اتاق</a>
                <!-- <button class="btn btn-danger" onclick="window.location.href='booking.php';">رزرو اتاق</button> -->
            </center>
        </div>

<?php
}
 ?>
</div>
</div>


<?php include ("footer.php") ?>