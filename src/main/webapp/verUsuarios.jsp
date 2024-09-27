<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp"%>
<%@include file="components/bodyinicio.jsp"%>


<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Ver Usuarios</h1>
    <p class="mb-4">A continuación podrá visualizar la lista completa de usuarios</p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">

        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered text-dark border border-dark" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th class="border border-dark">ID</th>
                            <th class="border border-dark">Nombre de Usuario</th>
                            <th class="border border-dark">Rol</th>  
                            <th class="border border-dark" style="width:210px;">Acción</th> 
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th class="border border-dark">ID</th>
                            <th class="border border-dark">Nombre de Usuario</th>
                            <th class="border border-dark">Rol</th>  
                            <th class="border border-dark" style="width:210px;">Acción</th> 
                        </tr>
                    </tfoot>
                    <%List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
                    %>
                    <tbody>
                        <%
                            for (Usuario usu : listaUsuarios) {
                        %>
                        <tr>

                            <td class="border border-dark" id="id_usu<%=usu.getId_usuario()%>"><%=usu.getId_usuario()%></td>
                            <td class="border border-dark"><%=usu.getNombreUsuario()%></td>
                            <td class="border border-dark"><%=usu.getRol()%></td>
                            <%
                                if (usu.getNombreUsuario().equals("admin")) {
                            %>
                            <td class="border border-dark" style="display:flex; width:230px; height: 60px;"></td> 

                            <%} else {
                            %>
                            <td class="border border-dark" style="display:flex; width:230px; height: 60px;">
                                <form name="eliminar" action="SvElimUsuarios" method="POST">
                                    <button type="submit" class="btn btn-primary btn-user btn-block" style="background-color: #e83e8c" onMouseOver="this.style.cssText = 'background-color: red'" 

                                            onMouseOut="this.style.cssText = 'background-color: #e83e8c'">
                                        <i class="fas fa-trash-alt"></i> Eliminar
                                    </button>
                                    <input type="hidden" name="id" value="<%=usu.getId_usuario()%>">                                
                                </form>
                                <form name="editar" action="SvEditUsuarios" method="GET">
                                    <button type="submit" class="btn btn-primary btn-user btn-block" style="margin-left: 5px;">
                                        <i class="fas fa-pencil-alt"></i> Editar
                                    </button>
                                    <input type="hidden" name="id" value="<%=usu.getId_usuario()%>">                                
                                </form>                               
                            </td>  
                            <%}%>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>

<%@include file="components/bodyfinal.jsp"%>
