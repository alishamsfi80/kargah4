<?php include('header.php');
$_SESSION['edit_room']=$_GET['id_edit']
 ?>
<div class="header">

    <br /><br /><br />

    <div class="addroomparent">
        <div class="addroom">
            <center>
                <br /><br />
                <h4 style="font-family: 'B Titr'; color: yellowgreen;">قیمت جدید اتاق را وارد کنید</h4>
                <form class="addroomform" method="post" action="action_editroom.php">
                    <div class="form-group">
                        <br />
                        <br /><br />
                        <center><input name="new_price" class="form-control" placeholder="قیمت جدید اتاق"></center>
                    </div>
                    <br /><br />
                    <button type="submit" class="btn btn-primary">ثبت اطلاعات جدید</button>
                </form>
            </center>
        </div>
    </div>
</div>


<?php include('footer.php'); ?>