<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio de sesión</title>     
        <link href="css/sb-admin-2.css" rel="stylesheet">
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    </head>
    <body class="bg-info">

        <div class="container">

            <!-- Outer Row -->
            <div class="row justify-content-center">

                <div class="col-xl-10 col-lg-12 col-md-9">

                    <div class="card o-hidden border-0 shadow-lg my-5">
                        <div class="card-body p-0">
                            <!-- Nested Row within Card Body -->
                            <div class="row">
                                <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>                                
                                <div class="col-lg-6">
                                    <div class="p-5">
                                        <br>
                                        <br>
                                        <br>
                                        <br>


                                        <div class="text-center">                                            
                                            <div class="sidebar-brand-icon">
                                                <svg xmlns="http://www.w3.org/2000/svg" height="52" width="52" viewBox="0 0 512 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path fill="#f70808" d="M256 32c14.2 0 27.3 7.5 34.5 19.8l216 368c7.3 12.4 7.3 27.7 .2 40.1S486.3 480 472 480L40 480c-14.3 0-27.6-7.7-34.7-20.1s-7-27.8 .2-40.1l216-368C228.7 39.5 241.8 32 256 32zm0 128c-13.3 0-24 10.7-24 24l0 112c0 13.3 10.7 24 24 24s24-10.7 24-24l0-112c0-13.3-10.7-24-24-24zm32 224a32 32 0 1 0 -64 0 32 32 0 1 0 64 0z"/></svg>
                                            </div>
                                        </div>


                                        <br>
                                        <br> 

                                        <form class="user"> 
                                            <div class="col-sm-12 mb-3 mx-auto text-center">
                                                <p style="font-weight: bolder; font-size: 18px">Necesitas iniciar sesión.</p>
                                            </div>    
                                            <br> 
                                            <div class="col-sm-6 mb-3 mx-auto">
                                                <a href="login.jsp" class="btn btn-info btn-block mx-auto border-dark" style="font-weight: bolder; font-size: 16px;" type="submit">
                                                    Ir a Inicio                                               
                                                </a>
                                            </div>                                                                                       
                                        </form>                                    
                                        <br>
                                        <br>
                                        <br>
                                        <br>
                                        <br>
                                        <br>
                                        <br>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin-2.min.js"></script>

    </body>

</html>
