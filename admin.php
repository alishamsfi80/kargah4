<?php include('header.php'); ?>

<div class="header">
    <br /><br /><br />
    <div class="managecardparent">
        <div class="managecard" style="overflow-y: auto; overflow-x: hidden;">
            <center><button class="btn btn-secondary" id="addroombtn"
                    onclick="window.location.href='addroom.php';">افزودن اتاق</button></center>
            <br /><br />
            <div class="row" id="editroomcardparent">
                <div class="col-md-4" id="editroomcard">
                    <br />
                    <center><img src="images/room1.jpg" class="editroomimg"></center>
                    <br />
                    <h6>ظرفیت اتاق : </h6>
                    <h6>2 نفر</h6>
                    <br />
                    <h6>قیمت هر شب :</h6>
                    <h6>1000 دلار</h6>
                    <br />
                    <center><button class="btn btn-danger" onclick="window.location.href='editroom.php';">ویرایش قیمت
                            اتاق</button></center>

                </div>
                <div class="col-md-4" id="editroomcard">

                </div>
                <div class="col-md-4" id="editroomcard">

                </div>

            </div>
        </div>

    </div>

</div>

<?php include('footer.php'); ?>