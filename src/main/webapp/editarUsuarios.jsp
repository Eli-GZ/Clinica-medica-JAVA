<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp"%>
<%@include file="components/bodyinicio.jsp"%>





<div class="form-group col">
    <div class="col-sm-6 mb-3 mx-auto">
        <h1>Edición de Usuarios</h1>
        <p>Este es el apartado para modificar usuarios del sistema</p></div>  </div>   

<%Usuario usu = (Usuario) request.getSession().getAttribute("usuEditar");%>

<form class="user" action="SvEditUsuarios" method="POST">
    <div class="form-group col">
        <div class="col-sm-6 mb-3 mx-auto">
            <input type="text" class="form-control form-control-user"
                   id="nombreUsu" name="nombreUsu" placeholder="Nombre Usuario" value="<%=usu.getNombreUsuario()%>">
        </div>
        <div class="col-sm-6 mb-3 mx-auto">
            <input type="password" class="form-control form-control-user" id="contrasenia" name="contrasenia" placeholder="Contraseña" value="<%=usu.getContrasenia()%>">
        </div>
        <div class="col-sm-6 mb-3 mx-auto">
            <input type="text" class="form-control form-control-user" id="rol" name="rol" placeholder="Rol" value="<%=usu.getRol()%>">
        </div>        
        <hr>
        <div class="col-sm-4 mb-3 mx-auto">
            <button class="btn btn-primary btn-user btn-block mx-auto" type="submit">
                Guardar Modificación
            </button>
        </div>
        <hr>
    </div>
</form>
</div>
<%@include file="components/bodyfinal.jsp"%>

