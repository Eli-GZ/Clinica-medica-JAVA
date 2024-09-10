<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp"%>
<%@include file="components/bodyinicio.jsp"%>


<div class="form-group col">
    <div class="col-sm-6 mb-3 mx-auto">
        <h1>Alta Responsables</h1>
        <p>Completa los datos:</p></div>  </div>   


<form class="user" action="SvResponsable" method="POST">
    <div class="form-group col">
        <div class="col-sm-4 mb-3 mx-auto">
            <input type="text" class="form-control mb-4" style="height:50px; font-weight: bolder; font-size: 16px; border: solid" id="dniResp" name="dniResp" placeholder="DNI"required="">
        </div>
        <div class="col-sm-4 mb-3 mx-auto">
            <input type="text" class="form-control mb-4" style="height:50px; font-weight: bolder; font-size: 16px; border: solid" id="nombre" name="nombre" placeholder="Nombre" required="">
        </div>
        <div class="col-sm-4 mb-3 mx-auto">
            <input type="text" class="form-control mb-4" style="height:50px; font-weight: bolder; font-size: 16px; border: solid" id="apellido" name="apellido" placeholder="Apellido" required="">
        </div>
        <div class="col-sm-4 mb-3 mx-auto">
            <input type="text" class="form-control mb-4" style="height:50px; font-weight: bolder; font-size: 16px; border: solid" id="telefono" name="tel" placeholder="Teléfono" required=""> 
        </div>
        <div class="col-sm-4 mb-3 mx-auto">
            <input type="text" class="form-control mb-4" style="height:50px; font-weight: bolder; font-size: 16px; border: solid" id="direccion" name="direc" placeholder="Dirección" required="">
        </div>
        <div class="col-sm-4 mb-3 mx-auto">
            <input type="date" class="form-control mb-4" style="height:50px; font-weight: bolder; font-size: 16px; border: solid" id="fechanac" name="fecha_nac" placeholder="Fecha Nac" required="">

        </div>

        <div class="col-sm-4 mb-3 mx-auto">
            <input type="text"  class="form-control mb-4" style="height:50px; font-weight: bolder; font-size: 16px; border: solid" id="parentesco" name="tipo_resp" placeholder="Parentesco" required="">
        </div>
        <hr>
        <div class="col-sm-2 mb-3 mx-auto">
            <button class="btn btn-info btn-block mx-auto border-dark"style="font-weight: bolder; font-size: 16px" type="submit">
                Registrar
            </button>
        </div>
        <hr>
    </div>
</form>
</div>
<%@include file="components/bodyfinal.jsp"%>

