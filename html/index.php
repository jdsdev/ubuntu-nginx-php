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

        <p>You have successfully deployed a <strong>docker</strong> container running <strong>NGINX</strong> and <strong>PHP-FPM 8.x</strong>.</p>

        <p>

          <strong>SERVER: </strong><?php echo isset($_SERVER['SERVER_SOFTWARE']) ? $_SERVER['SERVER_SOFTWARE'] : 'NGINX'; ?><br>

          <strong>PHP-FPM: </strong>v<?php echo phpversion(); ?><br>

          <strong>HOSTNAME: </strong><?php echo gethostname(); ?><br>

          <strong>WEB ROOT: </strong><?php echo $_ENV['DOCUMENT_ROOT'] ?>

        </p>

        <a style="text-decoration:none" href="checkit.php">Check Craft 4 server requirements.</a>

      </div>
    </div>
  </div>
</body>
</html>
