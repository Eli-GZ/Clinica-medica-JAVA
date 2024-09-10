
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
                    <div class="sidebar-brand-text mx-3 font-weight-bolder" style="font-size: 20px; color: black; font-weight:800">Consultorios</div>
                </div>

            </a>
            <br>
                <!-- Divider -->
                <hr class="sidebar-divider my-0">

                    <!-- Nav Item - Dashboard -->
                    <li class="nav-item active">
                        <a class="nav-link">
                            <span class="font-weight-bolder" style="font-size: 16px; color: black; font-weight:800"> <b> <svg xmlns="http://www.w3.org/2000/svg" height="20" width="20" viewBox="0 0 512 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path fill="#000000" d="M256 0a256 256 0 1 0 0 512A256 256 0 1 0 256 0zM135 241c-9.4-9.4-9.4-24.6 0-33.9s24.6-9.4 33.9 0l87 87 87-87c9.4-9.4 24.6-9.4 33.9 0s9.4 24.6 0 33.9L273 345c-9.4 9.4-24.6 9.4-33.9 0L135 241z"/></svg> MENU</b></span></a>
                    </li>

                    <!-- Divider -->
                    <hr class="sidebar-divider">

                        <li class="nav-item">
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTurnos"
                               aria-expanded="true" aria-controls="collapseTurnos">

                                <span style="font-size: 20px; color: black; font-weight:800"><svg xmlns="http://www.w3.org/2000/svg" height="20" width="23" viewBox="0 0 576 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path fill="#000000" d="M48 0C21.5 0 0 21.5 0 48L0 256l144 0c8.8 0 16 7.2 16 16s-7.2 16-16 16L0 288l0 64 144 0c8.8 0 16 7.2 16 16s-7.2 16-16 16L0 384l0 80c0 26.5 21.5 48 48 48l217.9 0c-6.3-10.2-9.9-22.2-9.9-35.1c0-46.9 25.8-87.8 64-109.2l0-95.9L320 48c0-26.5-21.5-48-48-48L48 0zM152 64l16 0c8.8 0 16 7.2 16 16l0 24 24 0c8.8 0 16 7.2 16 16l0 16c0 8.8-7.2 16-16 16l-24 0 0 24c0 8.8-7.2 16-16 16l-16 0c-8.8 0-16-7.2-16-16l0-24-24 0c-8.8 0-16-7.2-16-16l0-16c0-8.8 7.2-16 16-16l24 0 0-24c0-8.8 7.2-16 16-16zM512 272a80 80 0 1 0 -160 0 80 80 0 1 0 160 0zM288 477.1c0 19.3 15.6 34.9 34.9 34.9l218.2 0c19.3 0 34.9-15.6 34.9-34.9c0-51.4-41.7-93.1-93.1-93.1l-101.8 0c-51.4 0-93.1 41.7-93.1 93.1z"/></svg> Turnos</span>
                            </a>
                            <div id="collapseTurnos" class="collapse" aria-labelledby="headingTurnos"
                                 data-parent="#accordionSidebar">
                                <div class="bg-white py-2 collapse-inner rounded">
                                    <h6 class="collapse-header">Acciones:</h6>
                                    <a class="collapse-item" href="">Ver Turnos</a>
                                    <a class="collapse-item" href="altaPaciente.jsp">Generar Turno</a> 
                                </div>
                            </div>
                        </li>  

                        <%
                            if (usuario != null) {

                                if (usuario.equals("admin")) {
                        %>

                        <!-- Nav Item - Pages Collapse Menu -->
                        <li class="nav-item">
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                               aria-expanded="true" aria-controls="collapseTwo">                            
                                <span style="font-size: 20px; color: black; font-weight:800"><svg xmlns="http://www.w3.org/2000/svg" height="20" width="23" viewBox="0 0 576 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path fill="#000000" d="M142.4 21.9c5.6 16.8-3.5 34.9-20.2 40.5L96 71.1 96 192c0 53 43 96 96 96s96-43 96-96l0-120.9-26.1-8.7c-16.8-5.6-25.8-23.7-20.2-40.5s23.7-25.8 40.5-20.2l26.1 8.7C334.4 19.1 352 43.5 352 71.1L352 192c0 77.2-54.6 141.6-127.3 156.7C231 404.6 278.4 448 336 448c61.9 0 112-50.1 112-112l0-70.7c-28.3-12.3-48-40.5-48-73.3c0-44.2 35.8-80 80-80s80 35.8 80 80c0 32.8-19.7 61-48 73.3l0 70.7c0 97.2-78.8 176-176 176c-92.9 0-168.9-71.9-175.5-163.1C87.2 334.2 32 269.6 32 192L32 71.1c0-27.5 17.6-52 43.8-60.7l26.1-8.7c16.8-5.6 34.9 3.5 40.5 20.2zM480 224a32 32 0 1 0 0-64 32 32 0 1 0 0 64z"/></svg> Médicos</span>
                            </a>
                            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                                <div class="bg-white py-2 collapse-inner rounded">
                                    <h6 class="collapse-header">Acciones:</h6>
                                    <a class="collapse-item" href="">Ver Médicos</a>
                                    <a class="collapse-item" href="altaMedicos.jsp">Registrar Médicos</a>                           
                                </div>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseSecretarios"
                               aria-expanded="true" aria-controls="collapseSecretarios">

                                <span style="font-size: 20px; color: black; font-weight:800"><svg xmlns="http://www.w3.org/2000/svg" height="20" width="23" viewBox="0 0 576 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path fill="#000000" d="M256 0l64 0c17.7 0 32 14.3 32 32l0 64c0 17.7-14.3 32-32 32l-64 0c-17.7 0-32-14.3-32-32l0-64c0-17.7 14.3-32 32-32zM64 64l128 0 0 48c0 26.5 21.5 48 48 48l96 0c26.5 0 48-21.5 48-48l0-48 128 0c35.3 0 64 28.7 64 64l0 320c0 35.3-28.7 64-64 64L64 512c-35.3 0-64-28.7-64-64L0 128C0 92.7 28.7 64 64 64zM176 437.3c0 5.9 4.8 10.7 10.7 10.7l202.7 0c5.9 0 10.7-4.8 10.7-10.7c0-29.5-23.9-53.3-53.3-53.3l-117.3 0c-29.5 0-53.3 23.9-53.3 53.3zM288 352a64 64 0 1 0 0-128 64 64 0 1 0 0 128z"/></svg> Secretarios</span>
                            </a>
                            <div id="collapseSecretarios" class="collapse" aria-labelledby="headingSecretarios" data-parent="#accordionSidebar">
                                <div class="bg-white py-2 collapse-inner rounded">
                                    <h6 class="collapse-header">Acciones:</h6>
                                    <a class="collapse-item" href="">Ver Secretarios</a>
                                    <a class="collapse-item" href="altaMedicos.jsp">Registrar Secretarios</a>                           
                                </div>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUsu"
                               aria-expanded="true" aria-controls="collapseUsu">                           
                                <span style="font-size: 20px; color: black; font-weight:800"><svg xmlns="http://www.w3.org/2000/svg" height="20" width="26" viewBox="0 0 640 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path fill="#000000" d="M144 0a80 80 0 1 1 0 160A80 80 0 1 1 144 0zM512 0a80 80 0 1 1 0 160A80 80 0 1 1 512 0zM0 298.7C0 239.8 47.8 192 106.7 192l42.7 0c15.9 0 31 3.5 44.6 9.7c-1.3 7.2-1.9 14.7-1.9 22.3c0 38.2 16.8 72.5 43.3 96c-.2 0-.4 0-.7 0L21.3 320C9.6 320 0 310.4 0 298.7zM405.3 320c-.2 0-.4 0-.7 0c26.6-23.5 43.3-57.8 43.3-96c0-7.6-.7-15-1.9-22.3c13.6-6.3 28.7-9.7 44.6-9.7l42.7 0C592.2 192 640 239.8 640 298.7c0 11.8-9.6 21.3-21.3 21.3l-213.3 0zM224 224a96 96 0 1 1 192 0 96 96 0 1 1 -192 0zM128 485.3C128 411.7 187.7 352 261.3 352l117.3 0C452.3 352 512 411.7 512 485.3c0 14.7-11.9 26.7-26.7 26.7l-330.7 0c-14.7 0-26.7-11.9-26.7-26.7z"/></svg> Usuarios</span>
                            </a>
                            <div id="collapseUsu" class="collapse" aria-labelledby="headingUsu" data-parent="#accordionSidebar">
                                <div class="bg-white py-2 collapse-inner rounded">
                                    <h6 class="collapse-header">Acciones:</h6>
                                    <a class="collapse-item" href="SvUsuarios">Ver Usuarios</a>
                                    <a class="collapse-item" href="altaUsuarios.jsp">Alta Usuarios</a>                           
                                </div>
                            </div>
                        </li>
                        <%       }
                            }
                        %>
                        <!-- Nav Item - Utilities Collapse Menu -->

                        <li class="nav-item">
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                               aria-expanded="true" aria-controls="collapseUtilities">                           
                                <span style="font-size: 20px; color: black; font-weight:800"><svg xmlns="http://www.w3.org/2000/svg" height="20" width="20" viewBox="0 0 512 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path fill="#000000" d="M47.6 300.4L228.3 469.1c7.5 7 17.4 10.9 27.7 10.9s20.2-3.9 27.7-10.9L464.4 300.4c30.4-28.3 47.6-68 47.6-109.5v-5.8c0-69.9-50.5-129.5-119.4-141C347 36.5 300.6 51.4 268 84L256 96 244 84c-32.6-32.6-79-47.5-124.6-39.9C50.5 55.6 0 115.2 0 185.1v5.8c0 41.5 17.2 81.2 47.6 109.5z"/></svg> Pacientes</span>
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

                                <span style="font-size: 20px; color: black; font-weight:800"><svg xmlns="http://www.w3.org/2000/svg" height="20" width="23" viewBox="0 0 576 512"><!--!Font Awesome Free 6.6.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path fill="#000000" d="M224 24l0 56-56 0c-13.3 0-24 10.7-24 24l0 48c0 13.3 10.7 24 24 24l56 0 0 56c0 13.3 10.7 24 24 24l48 0c13.3 0 24-10.7 24-24l0-56 56 0c13.3 0 24-10.7 24-24l0-48c0-13.3-10.7-24-24-24l-56 0 0-56c0-13.3-10.7-24-24-24L248 0c-13.3 0-24 10.7-24 24zM559.7 392.2c17.8-13.1 21.6-38.1 8.5-55.9s-38.1-21.6-55.9-8.5L392.6 416 272 416c-8.8 0-16-7.2-16-16s7.2-16 16-16l16 0 64 0c17.7 0 32-14.3 32-32s-14.3-32-32-32l-64 0-16 0-78.3 0c-29.1 0-57.3 9.9-80 28L68.8 384 32 384c-17.7 0-32 14.3-32 32l0 64c0 17.7 14.3 32 32 32l160 0 160.5 0c29 0 57.3-9.3 80.7-26.5l126.6-93.3zm-367-8.2l.9 0c0 0 0 0 0 0c-.3 0-.6 0-.9 0z"/></svg> Responsables</span>
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

