<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Pagina Inicial | Moda Africana</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head>
<body>

<aside class="menu-sidebar d-none d-lg-block">
    <div class="logo">
        <a href="../index.php">
            <img src="admin/images/icon/logoDigitalia.png" alt="Digitalia"/>
        </a>
    </div>
    <div class="menu-sidebar__content js-scrollbar1">
        <nav class="navbar-sidebar">
            <ul class="list-unstyled navbar__list ">

                <li>
                    <a href="admin/index.php">CONTROLER</a>
                </li>
                <li class="active">
                    <a href="pedidos.php">PEDIDOS</a>
                </li>
            </ul>


    </div>
</aside>
<div class="page-container">

    <form action="uploadBanner.php" method="post" enctype="multipart/form-data" class="row g-3">
        <div class="mb-3">
            <img src="images/home/girl1.jpg" width="100">
            <input type="file" name="imagem1">
        </div>
        <div class="mb-3">
            <img src="images/home/girl2.jpg" width="100">
            <input type="file" name="imagem2">
        </div>
        <div class="mb-3">
            <img src="images/home/girl3.jpg" width="100">
            <input type="file" name="imagem3">
        </div>
        <input type="submit" value="Guardar" class="btn btn-primary">
    </form>
</div>
</body>