<header id="header" class="transparent-header-modern fixed-header-bg-white w-100">
            <div class="top-header bg-secondary">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <ul class="top-contact list-text-white  d-table">
                                <li><a href="#"><i class="fas fa-phone-alt text-primary mr-1"></i>(012) 345 678 102</a></li>
                                <li><a href="#"><i class="fas fa-envelope text-primary mr-1"></i>office@example.com</a></li>
                            </ul>
                        </div>
                        <div class="col-md-4">
                            <div class="top-contact float-right">
                                <ul class="list-text-white d-table">
								<li><i class="fas fa-user text-primary mr-1"></i>
								<?php  if(isset($_SESSION['uemail']))
								{ ?>
								<a href="../controllers/logout.php">Đăng xuất</a>&nbsp;&nbsp;<?php } else { ?>
								<a href="../views/login_view.php"> Đăng nhập </a>&nbsp;&nbsp;
								<?php } ?>
								| </li>
								<li><i class="fas fa-user text-primary mr-1"></i><a href="../views/register_view.php"> Đăng ký</li>
								</ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main-nav secondary-nav hover-primary-nav py-2">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <nav class="navbar navbar-expand-lg navbar-light p-0"> <a class="navbar-brand position-relative" href="#"><img class="nav-logo" src="../images/logo/logo.png" alt=""></a>
                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
                                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                    <ul class="navbar-nav mr-auto">
                                        <li class="nav-item dropdown"> <a class="nav-link" href="../index.php" role="button" aria-haspopup="true" aria-expanded="false">Trang chủ</a></li>
										
										<li class="nav-item"> <a class="nav-link" href="../controllers/about_controller.php">Giới thiệu</a> </li>
										
										<li class="nav-item"> <a class="nav-link" href="../controllers/agent_controller.php">Đại lý</a> </li>
										
										<li class="nav-item"> <a class="nav-link" href="../controllers/pro_controller.php">Bất động sản</a> </li>
                                        <li class="nav-item"> <a class="nav-link" href="../controllers/contact_controller.php">Liên hệ</a> </li>
										
										<?php  if(isset($_SESSION['uemail']))
										{ ?>
										<li class="nav-item dropdown">
											<a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Tài khoản của tôi</a>
											<ul class="dropdown-menu">
												<li class="nav-item"> <a class="nav-link" href="../controllers/profile_controller.php">Hồ sơ</a> </li>
												<!-- <li class="nav-item"> <a class="nav-link" href="request.php">Property Request</a> </li> -->
												<li class="nav-item"> <a class="nav-link" href="../views/feature_view.php">Bất động sản của tôi</a> </li>
												<li class="nav-item"> <a class="nav-link" href="../controllers/logout.php">Đăng xuất</a> </li>	
											</ul>
                                        </li>
										<?php } else { ?>
										<li class="nav-item"> <a class="nav-link" href="controllers/login_controller.php">Đăng nhập/ Đăng ký</a> </li>
										<?php } ?>
										
                                    </ul>
                                    
									
									<a class="btn btn-primary d-none d-xl-block" href="../views/subpro_view.php">Đăng tải</a> 
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </header>