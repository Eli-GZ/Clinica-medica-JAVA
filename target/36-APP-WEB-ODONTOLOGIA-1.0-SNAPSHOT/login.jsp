<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio de sesión</title>     
        <link href="css/sb-admin-2.css" rel="stylesheet">

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
                                        <div class="text-center">
                                            <h1 class="h2 text-gray-900 mt-5 mb-5">Iniciar Sesión</h1>
                                        </div>
                                        <form class="user" action="SvLogin" method="POST">
                                            <div class="form-group">
                                                <input class="form-control mb-4" style="height:50px; font-weight: bolder; font-size: 16px; border: solid"
                                                       id="usuario" name="usuario" aria-describedby="emailHelp"
                                                       placeholder="Usuario">
                                            </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control mb-4" style="height:50px; font-weight: bolder; font-size: 16px; border: solid"
                                                       id="contrasenia" name="contrasenia" placeholder="Contraseña">
                                            </div>   
                                            <div class="col-sm-6 mb-3 mx-auto">
                                                <button class="btn btn-info btn-block mx-auto border-dark" style="font-weight: bolder; font-size: 16px;" type="submit">
                                                    Entrar
                                                </button>
                                            </div>

                                        </form>
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
