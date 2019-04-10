<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>nginx-php-fpm</title>
  <meta name="description" content="">
  <meta name="author" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <div class="container">
    <div class="row">
      <div class="one-half column" style="margin-top: 25%">

        <h4>Congratulations!</h4>

        <p>You have successfully deployed a <strong>docker</strong> container running our <strong>NGINX</strong> with <strong>PHP-FPM 7.x</strong> image</p>

        <p><strong>NGINX</strong><br><strong>PHP-FPM: </strong>v<?php echo phpversion(); ?><br><strong>HOSTNAME: </strong><?php echo gethostname(); ?><br><strong>WEB ROOT: </strong><?php echo $_ENV['DOCUMENT_ROOT'] ?></p>

        <a style="text-decoration:none" href="checkit.php">Check Craft 3 server requirements.</a>

      </div>
    </div>
  </div>
</body>
</html>
