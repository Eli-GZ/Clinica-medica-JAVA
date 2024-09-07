
<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<body id="page-top">
    <!-- Validacion Sesión -->
    <%HttpSession misesion = request.getSession();
        String usuario = (String) request.getSession().getAttribute("usuario");

        if (usuario == null) {
            response.sendRedirect("sinLogin.jsp");
        }
    %>
    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-info sidebar sidebar-dark accordion " id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.jsp">
                <div class="sidebar-brand-icon">
                    <svg xmlns="http://www.w3.org/2000/svg" height="32" width="32" viewBox="0 0 448 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path fill="#ffff" d="M224 256A128 128 0 1 0 224 0a128 128 0 1 0 0 256zm-96 55.2C54 332.9 0 401.3 0 482.3C0 498.7 13.3 512 29.7 512l388.6 0c16.4 0 29.7-13.3 29.7-29.7c0-81-54-149.4-128-171.1l0 50.8c27.6 7.1 48 32.2 48 62l0 40c0 8.8-7.2 16-16 16l-16 0c-8.8 0-16-7.2-16-16s7.2-16 16-16l0-24c0-17.7-14.3-32-32-32s-32 14.3-32 32l0 24c8.8 0 16 7.2 16 16s-7.2 16-16 16l-16 0c-8.8 0-16-7.2-16-16l0-40c0-29.8 20.4-54.9 48-62l0-57.1c-6-.6-12.1-.9-18.3-.9l-91.4 0c-6.2 0-12.3 .3-18.3 .9l0 65.4c23.1 6.9 40 28.3 40 53.7c0 30.9-25.1 56-56 56s-56-25.1-56-56c0-25.4 16.9-46.8 40-53.7l0-59.1zM144 448a24 24 0 1 0 0-48 24 24 0 1 0 0 48z"/></svg>
                </div>
                <div class="sidebar-brand-text mx-3 text-dark font-weight-bolder" style="font-size: 18px">Consultorios</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

                <!-- Nav Item - Dashboard -->
                <li class="nav-item active">
                    <a class="nav-link">
                        <i class="fas fa-solid fa-bars text-dark"></i>
                        <span class="text-dark font-weight-bolder" style="font-size: 18px"> <b>MENU</b></span></a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                    <!-- Heading -->
                    <div class="sidebar-heading text-dark font-weight-bolder" style="font-size: 12px"> 
                        Gestión
                    </div>

                    <li class="nav-item">
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTurnos"
                           aria-expanded="true" aria-controls="collapseTurnos">
                            <i class="fas fa-solid fa-heart text-dark"></i>
                            <span class="text-dark font-weight-bolder" style="font-size: 18px">Turnos</span>
                        </a>
                        <div id="collapseTurnos" class="collapse" aria-labelledby="headingTurnos"
                             data-parent="#accordionSidebar">
                            <div class="bg-white py-2 collapse-inner rounded">
                                <h6 class="collapse-header">Acciones:</h6>
                                <a class="collapse-item" href="">Ver Turnos Disponibles</a>
                                <a class="collapse-item" href="altaPaciente.jsp">Generar Turno</a> 
                            </div>
                        </div>
                    </li>  

                    <%
                        if (usuario.equals("admin")) {
                    %>

                    <!-- Nav Item - Pages Collapse Menu -->
                    <li class="nav-item">
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                           aria-expanded="true" aria-controls="collapseTwo">
                            <i class="fas fa-solid fa-stethoscope text-dark"></i>
                            <span class="text-dark font-weight-bolder" style="font-size: 18px">Médicos</span>
                        </a>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                            <div class="bg-white py-2 collapse-inner rounded">
                                <h6 class="collapse-header">Acciones:</h6>
                                <a class="collapse-item" href="">Ver Médicos</a>
                                <a class="collapse-item" href="altaMedicos.jsp">Alta Médicos</a>                           
                            </div>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseSecretarios"
                           aria-expanded="true" aria-controls="collapseSecretarios">
                            <i class="fas fa-solid fa-stethoscope text-dark"></i>
                            <span class="text-dark font-weight-bolder" style="font-size: 18px">Secretarios</span>
                        </a>
                        <div id="collapseSecretarios" class="collapse" aria-labelledby="headingSecretarios" data-parent="#accordionSidebar">
                            <div class="bg-white py-2 collapse-inner rounded">
                                <h6 class="collapse-header">Acciones:</h6>
                                <a class="collapse-item" href="">Ver Médicos</a>
                                <a class="collapse-item" href="altaMedicos.jsp">Alta Médicos</a>                           
                            </div>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUsu"
                           aria-expanded="true" aria-controls="collapseUsu">
                            <i class="fas fa-solid fa-users text-dark"></i>
                            <span class="text-dark font-weight-bolder" style="font-size: 18px">Usuarios</span>
                        </a>
                        <div id="collapseUsu" class="collapse" aria-labelledby="headingUsu" data-parent="#accordionSidebar">
                            <div class="bg-white py-2 collapse-inner rounded">
                                <h6 class="collapse-header">Acciones:</h6>
                                <a class="collapse-item" href="SvUsuarios">Ver Usuarios</a>
                                <a class="collapse-item" href="altaUsuarios.jsp">Alta Usuarios</a>                           
                            </div>
                        </div>
                    </li>
                    <%       }     %>
                    <!-- Nav Item - Utilities Collapse Menu -->

                    <li class="nav-item">
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                           aria-expanded="true" aria-controls="collapseUtilities">
                            <i class="fas fa-solid fa-heart text-dark"></i>
                            <span class="text-dark font-weight-bolder" style="font-size: 18px">Pacientes</span>
                        </a>
                        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                             data-parent="#accordionSidebar">
                            <div class="bg-white py-2 collapse-inner rounded">
                                <h6 class="collapse-header">Acciones:</h6>
                                <a class="collapse-item" href="">Ver Pacientes</a>
                                <a class="collapse-item" href="altaPaciente.jsp">Alta Pacientes</a> 
                            </div>
                        </div>
                    </li>                      

                    <li class="nav-item">
                        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseRespo"
                           aria-expanded="true" aria-controls="collapseRespo">
                            <i class="fas fa-solid fa-heart text-dark"></i>
                            <span class="text-dark font-weight-bolder" style="font-size: 18px">Responsables</span>
                        </a>
                        <div id="collapseRespo" class="collapse" aria-labelledby="headingRespo"
                             data-parent="#accordionSidebar">
                            <div class="bg-white py-2 collapse-inner rounded">
                                <h6 class="collapse-header">Acciones:</h6>
                                <a class="collapse-item" href="SvResponsable">Ver Responsables</a>
                                <a class="collapse-item" href="altaResponsable.jsp">Alta Responsables</a> 
                            </div>
                        </div>
                    </li>  


                    <!-- Divider -->
                    <hr class="sidebar-divider">



                        </ul>
                        <!-- End of Sidebar -->

                        <!-- Content Wrapper -->
                        <div id="content-wrapper" class="d-flex flex-column">

                            <!-- Main Content -->
                            <div id="content">

                                <!-- Topbar -->
                                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                                    <!-- Sidebar Toggle (Topbar) -->
                                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                                        <i class="fa fa-bars"></i>
                                    </button>

                                    <!-- Topbar Navbar -->
                                    <ul class="navbar-nav ml-auto">





                                        <!-- Nav Item - User Information -->
                                        <li class="nav-item dropdown no-arrow">
                                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <span class="mr-2 d-none d-lg-inline text-gray-600 small" style="font-size: 20px"><%=request.getSession().getAttribute("usuario")%></span>
                                                <img class="img-profile rounded-circle" style="width: 50px"
                                                     src="img/undraw_profile.svg">
                                            </a>
                                            <!-- Dropdown - User Information -->
                                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                                 aria-labelledby="userDropdown">
                                                <a class="dropdown-item" href="#">
                                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                                    Perfil
                                                </a>                              

                                                <div class="dropdown-divider"></div>
                                                <a class="dropdown-item" href="SvLogin" data-toggle="modal" data-target="#logoutModal">
                                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                                    Salir
                                                </a>
                                            </div>
                                        </li>

                                    </ul>

                                </nav>
                                <!-- End of Topbar -->

                                <!-- Begin Page Content -->
                                <div class="container-fluid">

