<?php
session_start();
?>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="hotelcss.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <title>Document</title>
</head>

<body>
    <div class="row" style=" direction : rtl; height : 70px; background-color : red;">
        <div class="col-md" id="firstheadertitle">
            <h2 class="headerh2">هتل اسکندر</h2>
        </div>
        <?php
        if (!(isset($_SESSION['login']) && $_SESSION['login'])) {
            ?>
            <div class="col-md" id="firstheaderbtns">
                <button type="button" class="btn btn-primary" onclick="window.location.href='login.php';">ورود</button>
                <button type="button" class="btn btn-primary" onclick="window.location.href='register.php';">ثبت
                    نام</button>
            </div>
            <?php
        }
        ?>

    </div>

    <div class="headernav">
        <ul class="headerul">
            <li class="headerli">
                <a href="index.php" class="headerlink">صفحه اصلی</a>
            </li>
            <li class="headerli">
                <a href="#footer" class="headerlink">تماس با ما</a>
            </li>
            <li class="headerli">
                <a href="#footer" class="headerlink">درباره ما</a>
            </li>
            <?php
            if ((isset($_SESSION['login']) && $_SESSION['login'])) {
                ?>
                <li class="headerli">
                    <a href="#" class="headerlink" onclick="window.location.href='logout.php';"> خروج</a>
                </li>
                <?php
            }
            if (isset($_SESSION['admin']) && $_SESSION['admin']) {
                ?>
                <li class="headerli">
                    <a href="admin.php" class="headerlink"> مدیریت اتاق ها</a>
                </li>
                <?php
            }
            ?>
        </ul>
    </div>