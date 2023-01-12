<?php include('header.php');
include('function.php');
$user_id = $_SESSION['id'];
$link = mysqli_connect("localhost", "root", "", "hotel");
            //$room_id = $_SESSION['room_id'];
            if (mysqli_connect_errno())
                exit("خطاي با شرح زير رخ داده است :" . mysqli_connect_error());
$k = True;
            $query = "SELECT * FROM room_rezerv WHERE user_id='$user_id' and rezerv='$k'";

            $result = mysqli_query($link, $query);
            $counter = 0;
            while ($row[$counter] = mysqli_fetch_array($result)) {
                $counter++;
            }
            
?>


<center>
<div class="col-md-6">
    <br /><br />
    <br /><br />
    <table class="table" id="usermanagetable">
        <thead class="thead-dark">
            <tr>
                
              
                <th scope="col">اتاق</th>
                <th scope="col">روز</th>
            </tr>
        </thead>
        
            <?php
            for ($i=0;$i<$counter;$i++)
            {
                $room_id=$row[$i]['room_id'];
                $day=$row[$i]['day'];
            echo "
            <tbody>
              <tr>
            
                <td>$room_id</td>
       
                <td>$day</td>
               
            </tr>
            </tbody>";
            }
?>
        </tbody>
    </table>

</div>
</center>
<?php include('footer.php');?>

