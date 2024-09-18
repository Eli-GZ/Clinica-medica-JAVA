<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp"%>
<%@include file="components/bodyinicio.jsp"%>


<div class="form-group col">
    <div class="col-sm-6 mb-3 mx-auto">
        <h1>Registrar Secretarios</h1>
        <p>Completa los datos:</p></div>  </div>   


<form class="user" action="SvMedicos" method="POST">
    <div class="form-group col">
        <div class="col-sm-4 mb-3 mx-auto">
            <input type="text" class="form-control mb-4" style="height:50px; font-weight: bolder; font-size: 16px; border: solid" id="dniMed" name="dniMed" placeholder="DNI">
        </div>
        <div class="col-sm-4 mb-3 mx-auto">
            <input type="text" class="form-control mb-4" style="height:50px; font-weight: bolder; font-size: 16px; border: solid" id="nombre" name="nombre" placeholder="Nombre">
        </div>
        <div class="col-sm-4 mb-3 mx-auto">
            <input type="text" class="form-control mb-4" style="height:50px; font-weight: bolder; font-size: 16px; border: solid" id="apellido" name="apellido" placeholder="Apellido">
        </div>
        <div class="col-sm-4 mb-3 mx-auto">
            <input type="text" class="form-control mb-4" style="height:50px; font-weight: bolder; font-size: 16px; border: solid" id="telefono" name="tel" placeholder="Teléfono">
        </div>
        <div class="col-sm-4 mb-3 mx-auto">
            <input type="text" class="form-control mb-4" style="height:50px; font-weight: bolder; font-size: 16px; border: solid" id="direccion" name="direc" placeholder="Dirección">
        </div>
        <div class="col-sm-4 mb-3 mx-auto">
            <input type="date" class="form-control mb-4" style="height:50px; font-weight: bolder; font-size: 16px; border: solid" id="fechanac" name="Fecha_nac" placeholder="Fecha Nac">
        </div>
        <div class="col-sm-4 mb-3 mx-auto">
            <input type="text" class="form-control mb-4" style="height:50px; font-weight: bolder; font-size: 16px; border: solid" id="sector" name="sector" placeholder="Sector">
        </div>
        <hr>
        <div class="col-sm-2 mb-3 mx-auto">
            <button class="btn btn-info btn-block mx-auto border-dark"style="font-weight: bolder; font-size: 16px;" type="submit">
                Registrar
            </button>
        </div>
        <hr>
    </div>
</form>
</div>
<%@include file="components/bodyfinal.jsp"%>

