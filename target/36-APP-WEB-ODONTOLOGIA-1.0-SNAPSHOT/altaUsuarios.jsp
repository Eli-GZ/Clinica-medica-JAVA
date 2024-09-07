<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp"%>
<%@include file="components/bodyinicio.jsp"%>





<div class="form-group col">
    <div class="col-sm-6 mb-3 mx-auto">
        <h1>Altas Usuarios</h1>
        <p>Completa los datos:</p></div>  </div>   


<form class="user" action="SvUsuarios" method="POST">
    <div class="form-group col">
        <div class="col-sm-4 mb-3 mx-auto">
            <input type="text" class="form-control form-control-user" style="font-weight: bolder; font-size: 14px; border: solid" id="nombreUsu" name="nombreUsu" placeholder="Nombre Usuario">
        </div>
        <div class="col-sm-4 mb-3 mx-auto">
            <input type="password" class="form-control form-control-user" style="font-weight: bolder; font-size: 14px; border: solid" id="contrasenia" name="contrasenia" placeholder="Contraseña">
        </div>
        <div class="col-sm-4 mb-3 mx-auto">
            <input type="text" class="form-control form-control-user" style="font-weight: bolder; font-size: 14px; border: solid" id="rol" name="rol" placeholder="Rol">
        </div>        
        <hr>
        <div class="col-sm-2 mb-3 mx-auto">
            <button class="btn btn-primary btn-user btn-block mx-auto" style="font-weight: bolder; font-size: 16px" type="submit">
                Crear Usuario
            </button>
        </div>
        <hr>
    </div>
</form>
</div>
<%@include file="components/bodyfinal.jsp"%>

