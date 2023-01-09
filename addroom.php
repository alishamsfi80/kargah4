<?php include('header.php'); ?>
<div class="header">

    <br /><br /><br />

    <div class="addroomparent">
        <div class="addroom">
            <center>
                <br /><br />
                <h4 style="font-family: 'B Titr'; color: yellowgreen;">مشخصات اتاق جدید را وارد کنید</h4>
                <form class="addroomform" action="action_addroom.php" method="post">
                    <div class="form-group">
                        <br />
                        <br /><br />
                        <center><input name="capacity_add" class="form-control" placeholder="ظرفیت اتاق"></center>
                    </div>
                    <br />
                    <div class="form-group">
                        <br />
                        <input name="price_add" class="form-control" placeholder="قیمت ">
                    </div>
                    
                    <br />
                    <br /><br />
                    <button type="submit" class="btn btn-primary">افزودن اتاق</button>
                </form>
            </center>
        </div>
    </div>
</div>


<?php include('footer.php'); ?>