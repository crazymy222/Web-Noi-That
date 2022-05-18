<!DOCTYPE html>
<html lang="en">

<head>
    <base href="http://localhost/WebNoiThat/">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./public/css/reset.css">
    <link rel="stylesheet" href="./public/css/style.css">
    <title><?php echo $data["title"] ?></title>

</head>

<body>
    <div id="header">
        <?php
        require_once "./MVC/views/blocks/header.php";
        ?>
    </div>
    <div id="content">
        <?php require_once "./MVC/views/pages/" . $data["pages"] . ".php"; ?>
    </div>
    <div id="footer">
        <?php
        require_once "./MVC/views/blocks/footer.php";
        ?>
    </div>
    <script src="public/js/jquery-3.6.0.min.js"></script>
    <script src="public/js/main.js"></script>
</body>

</html>