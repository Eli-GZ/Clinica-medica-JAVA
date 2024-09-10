<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="logica.Responsable"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp"%>
<%@include file="components/bodyinicio.jsp"%>


<div class="form-group col">
    <div class="col-sm-6 mb-3 mx-auto">
        <h1>Edición Responsables</h1>
        <p>Este es el apartado para modificar los Responsables a cargo del sistema.</p></div>  </div>   

<%Responsable resp = (Responsable) request.getSession().getAttribute("respEditar");

    SimpleDateFormat formato = new SimpleDateFormat("dd-MM-yyyy");
    String fecha = formato.format(resp.getFecha_nac());
%>



<form class="user" action="SvEditResponsables" method="POST">
    <div class="form-group col">
        <div class="col-sm-4 mb-3 mx-auto">
            <input type="text" class="form-control form-control-user" style="font-weight: bolder; font-size: 14px; border: solid" id="dniResp" name="dniResp" value="<%= resp.getDni()%>" required="">
        </div>
        <div class="col-sm-4 mb-3 mx-auto">
            <input type="text" class="form-control form-control-user" style="font-weight: bolder; font-size: 14px; border: solid" id="nombre" name="nombre" value="<%= resp.getNombre()%>" required="">
        </div>
        <div class="col-sm-4 mb-3 mx-auto">
            <input type="text" class="form-control form-control-user" style="font-weight: bolder; font-size: 14px; border: solid" id="apellido" name="apellido" value="<%= resp.getApellido()%>" required="">
        </div>
        <div class="col-sm-4 mb-3 mx-auto">
            <input type="text" class="form-control form-control-user" style="font-weight: bolder; font-size: 14px; border: solid" id="telefono" name="tel" value="<%= resp.getTelefono()%>" required=""> 
        </div>
        <div class="col-sm-4 mb-3 mx-auto">
            <input type="text" class="form-control form-control-user" style="font-weight: bolder; font-size: 14px; border: solid" id="direccion" name="direc" value="<%= resp.getDireccion()%>" required="">
        </div>
        <div class="col-sm-4 mb-3 mx-auto">
            <input type="text" class="form-control form-control-user" style="font-weight: bolder; font-size: 14px; border: solid" id="fechanac" name="fecha_nac" value="<%= fecha%>" required="">
        </div>

        <div class="col-sm-4 mb-3 mx-auto">
            <input type="text" class="form-control form-control-user" style="font-weight: bolder; font-size: 14px; border: solid" id="parentesco" name="tipo_resp" value="<%= resp.getTipo_resp()%>" required="">
        </div>
        <hr>
        <div class="col-sm-2 mb-3 mx-auto">
            <button class="btn btn-info btn-user btn-block mx-auto border-dark"style="font-weight: bolder; font-size: 16px" type="submit">
                Guardar Modificación
            </button>
        </div>
        <hr>
    </div>
</form>
</div>
<%@include file="components/bodyfinal.jsp"%>

