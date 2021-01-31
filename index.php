<?php 
    require 'function.php';

	if(isset($_SESSION['role'])){
		if($_SESSION['role'] == 'Staff Gudang'){
            header("Location: staff.php");
            
		}
		else if($_SESSION['role'] == 'Manajer'){
			header("Location: manajer.php");
		}
	}
	
	if(isset($_POST['login'])){
		$username = $_POST['username'];
        $password = $_POST['password'];

        $cekdatabase = mysqli_query($conn, "SELECT * FROM user where username='$username' and password='$password'");
        $hitung = mysqli_num_rows($cekdatabase);

		if($hitung>0){
			$buff=mysqli_fetch_assoc($cekdatabase);
			
			$_SESSION['role'] = $buff['role'];
			
			if($buff['role'] == 'Staff Gudang'){
				header("Location: staff.php");
			}
			else if($buff['role'] == 'Manajer'){
				header("Location: manajer.php");
			}
		}
	}
 ?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Stok Barang</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Login</h3></div>
                                    <div class="card-body">
                                        <form method="post">
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputUsername">Username</label>
                                                <input class="form-control py-4" name="username" id="inputUsername" type="username" placeholder="Enter Username" />
                                            </div>
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputPassword">Password</label>
                                                <input class="form-control py-4" name="password" id="inputPassword" type="password" placeholder="Enter password" />
                                            </div>
                                            
                                            <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <button class="btn btn-primary"  name ="login">Login</button>
                                            </div>
                                        </form>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted" >Copyright &copy; Lefi Noviyanti 2021</div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
