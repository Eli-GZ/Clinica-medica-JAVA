<%@page import="logica.Responsable"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp"%>
<%@include file="components/bodyinicio.jsp"%>


<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Ver Responsables</h1>
    <p class="mb-4">A continuación podrá visualizar la lista completa de Responsables</p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">

        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered text-dark border border-dark" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th class="border border-dark">ID</th>
                            <th class="border border-dark">DNI</th>
                            <th class="border border-dark">Nombre</th>
                            <th class="border border-dark">Apellido</th>
                            <th class="border border-dark">Teléfono</th>
                            <th class="border border-dark">Dirección</th>
                            <th class="border border-dark">Fecha_Nac</th>  
                            <th class="border border-dark">Responsable</th>
                            <th class="border border-dark" style="width:210px;">Acción</th> 
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th class="border border-dark">ID</th>
                            <th class="border border-dark">DNI</th>
                            <th class="border border-dark">Nombre</th>
                            <th class="border border-dark">Apellido</th>
                            <th class="border border-dark">Teléfono</th>
                            <th class="border border-dark">Dirección</th>
                            <th class="border border-dark">Fecha_Nac</th>  
                            <th class="border border-dark">Responsable</th>
                            <th class="border border-dark" style="width:210px;">Acción</th> 
                        </tr>
                    </tfoot>
                    <%List<Responsable> listaResponsables = (List) request.getSession().getAttribute("listaResponsables");
                    %>
                    <tbody>
                        <%
                            for (Responsable resp : listaResponsables) {
                        %>
                        <tr>

                            <th class="border border-dark" id="id_usu<%= resp.getId()%>"><%= resp.getId()%></th>
                            <th class="border border-dark"><%= resp.getDni() %></th>
                            <th class="border border-dark"><%= resp.getNombre() %></th>
                            <th class="border border-dark"><%= resp.getApellido() %></th>
                            <th class="border border-dark"><%= resp.getTelefono() %></th>
                            <th class="border border-dark"><%= resp.getDireccion() %></th>
                            <th class="border border-dark"><%= resp.getFecha_nac() %></th>  
                            <th class="border border-dark"><%= resp.getTipo_resp() %></th>

                          
                            <td class="border border-dark" style="display:flex; width:230px; height: 40px;">
                                
                                <form name="eliminar" action="SvElimUsuarios" method="POST">
                                    <button type="submit" class="btn btn-primary btn-user btn-block" style="background-color: #e83e8c" onMouseOver="this.style.cssText = 'background-color: red'" 

                                            onMouseOut="this.style.cssText = 'background-color: #e83e8c'">
                                        <i class="fas fa-trash-alt"></i> Eliminar
                                    </button>
                                    <input type="hidden" name="id" value="<%= resp.getId()%>">                                
                                </form>
                                <form name="editar" action="SvEditUsuarios" method="GET">
                                    <button type="submit" class="btn btn-primary btn-user btn-block" style="margin-left: 5px;">
                                        <i class="fas fa-pencil-alt"></i> Editar
                                    </button>
                                    <input type="hidden" name="id" value="<%= resp.getId()%>">                                
                                </form>  
                                
                               
                        </tr>
                        <%}%>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>

<%@include file="components/bodyfinal.jsp"%>
