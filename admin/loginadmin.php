<?php
session_start();
$koneksi = new mysqli("localhost","root","","erepair");

?>
<!doctype html>
<html lang="en">
  <head>

    <link rel="stylesheet" href="css/login.css">

    <title>Admin - Login</title>
  </head>
  <body>

			<!-- Formulir Login -->

			<form action="#" method="post">
				<div class="login">
					<h2> Hallo ADMIN! </h2>
          <h4> Silakan Login Menggunakan Akun Yang Telah Terdaftar </h4>
          <br><center><p>Repost by <a href='https://valcoding.com/' title='valcoding.com' target='_blank'>valcoding.com</a></p></center>

					<div class="input-group">
						<input type="text" name="username" required="">
						<span>Email</span>
					</div>
					<div class="input-group">
						<input type="password" name="password" required="">
						<span>Password</span>
					</div>
					<div class="input-group">
						<input type="submit" name="submit" value="Login">
					</div>

                    <?php

                    if (isset($_POST["submit"]))
                    {

                        $username = $_POST["username"];
                        $password = $_POST["password"];
                        $ambil = $koneksi->query("SELECT * FROM admin WHERE username_admin='$username' AND password_admin='$password'");

                        $akunterdaftar = $ambil->num_rows;

                        if ($akunterdaftar==1)
                        {
                            $akun = $ambil->fetch_assoc();
                            $_SESSION["admin"] = $akun;
                            echo "<script>location='index.php';</script>";

                        }
                        else
                        {
                            echo "<script>alert('login gagal');</script>";
                            echo "<script>location='loginadmin.php';</script>";
                        }
                    }

                    ?>
</form>





















  </body>
</html>
