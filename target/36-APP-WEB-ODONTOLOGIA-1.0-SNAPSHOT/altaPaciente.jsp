<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp"%>
<%@include file="components/bodyinicio.jsp"%>


<div class="form-group col">
    <div class="col-sm-6 mb-3 mx-auto">
        <h1>Ingresar Paciente</h1>
        <p>Completa los datos:</p></div>  </div>   

<div>    
    <form class="user" action="SvPacientes" method="POST">
        <div class="form-group col">
            <div class="col-sm-4 mb-3 mx-auto">
                <input type="text" class="form-control form-control-user" style="font-weight: bolder; font-size: 14px; border: solid" id="dni" placeholder="DNI">
            </div>
            <div class="col-sm-4 mb-3 mx-auto">
                <input type="text" class="form-control form-control-user" style="font-weight: bolder; font-size: 14px; border: solid" id="nombre" placeholder="Nombre">
            </div>
            <div class="col-sm-4 mb-3 mx-auto">
                <input type="text" class="form-control form-control-user" style="font-weight: bolder; font-size: 14px; border: solid" id="apellido" placeholder="Apellido">
            </div>
            <div class="col-sm-4 mb-3 mx-auto">
                <input type="text" class="form-control form-control-user" style="font-weight: bolder; font-size: 14px; border: solid" id="telefono" placeholder="Teléfono">
            </div>
            <div class="col-sm-4 mb-3 mx-auto">
                <input type="text" class="form-control form-control-user" style="font-weight: bolder; font-size: 14px; border: solid" id="direccion" placeholder="Dirección">
            </div>
            <div class="col-sm-4 mb-3 mx-auto">
                <input type="text" class="form-control form-control-user" style="font-weight: bolder; font-size: 14px; border: solid" id="fechanac" placeholder="Fecha Nac">
            </div>
            <div class="col-sm-4 mb-3 mx-auto">
                <input type="text" class="form-control form-control-user" style="font-weight: bolder; font-size: 14px; border: solid" id="tiene_OS" placeholder="Obra Social">
            </div>
            <div class="col-sm-4 mb-3 mx-auto">
                <input type="text" class="form-control form-control-user" style="font-weight: bolder; font-size: 14px; border: solid" id="tipo_sangre" placeholder="Tipo de Sangre">

            </div>
            <div class="col-sm-4 mb-3 mx-auto">
                <p>*Solo menores de edad</p>
                <input type="text" class="form-control form-control-user" style="font-weight: bolder; font-size: 14px; border: solid" id="DniResp" placeholder="DNI Responsable">

                <hr>
            </div>
            <div class="col-sm-2 mb-3 mx-auto">
                <button class="btn btn-primary btn-user btn-block mx-auto"style="font-weight: bolder; font-size: 16px" type="submit">
                    Ingresar Paciente
                </button>
            </div>
        </div>
    </form>
</div>    

<%@include file="components/bodyfinal.jsp"%>

