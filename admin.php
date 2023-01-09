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
    <br /><br /><br />
    <div class="managecardparent">
        <div class="managecard" style="overflow-y: auto; overflow-x: hidden;">
            <center><button class="btn btn-secondary" id="addroombtn"
                    onclick="window.location.href='addroom.php';">افزودن اتاق</button></center>
            <br /><br />
            <div class="row" id="editroomcardparent">
            <?php
for ($i=0;$i<intdiv($counter, 2);$i++)
{
    
    $test=$i*2;
    $test2=$i*2+1;
      ?>        
           <div class="col-md-4" id="reservecard">
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
                <a class="btn btn-danger" href="editroom.php?id_edit=<?php echo $row[$test]['id'];?> ">تغییر قیمت اتاق</a>
            </center>
        </div>

        <div class="col-md-4" id="reservecard">
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
                <a class="btn btn-danger" href="editroom.php?id_edit=<?php echo $row[$test2]['id'];?> ">تغییر قیمت اتاق </a>
            </center>
        </div> 
        <?php
$k=($i+1)*2;

}

if ($counter-$k==1)
{
    ?>
    <div class="col-md-4" id="reservecard">
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
            <a class="btn btn-danger" href="editroom.php?id_edit=<?php echo $row[$k]['id'];?> ">تغییر قیمت اتاق</a>
                <!-- <button class="btn btn-danger" onclick="window.location.href='booking.php';">رزرو اتاق</button> -->
            </center>
        </div>

<?php
}
 ?>
</div>
</div>
    </div>

</div>

<?php include('footer.php'); ?>