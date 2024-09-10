<%@page import="logica.Paciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp"%>
<%@include file="components/bodyinicio.jsp"%>


<div class="form-group col">
    <div class="col-sm-6 mb-3 mx-auto">
        <h1>Alta Pacientes</h1>
        <p>Completa los datos:</p></div>  </div>   

<div>    
    <form class="user" action="SvPacientes" method="POST">
        <div class="form-group col">
            <div class="col-sm-4 mb-3 mx-auto">
                <input type="text" class="form-control mb-4" style="height:50px; font-weight: bolder; font-size: 16px; border: solid" id="dni" placeholder="DNI">
            </div>
            <div class="col-sm-4 mb-3 mx-auto">
                <input type="text" class="form-control mb-4" style="height:50px;font-weight: bolder; font-size: 16px; border: solid" id="nombre" placeholder="Nombre">
            </div>
            <div class="col-sm-4 mb-3 mx-auto">
                <input type="text" class="form-control mb-4" style="height:50px;font-weight: bolder; font-size: 16px; border: solid" id="apellido" placeholder="Apellido">
            </div>
            <div class="col-sm-4 mb-3 mx-auto">
                <input type="text" class="form-control mb-4" style="height:50px;font-weight: bolder; font-size: 16px; border: solid" id="telefono" placeholder="Teléfono">
            </div>
            <div class="col-sm-4 mb-3 mx-auto">
                <input type="text" class="form-control mb-4" style="height:50px;font-weight: bolder; font-size: 16px; border: solid" id="direccion" placeholder="Dirección">
            </div>
            <div class="col-sm-4 mb-3 mx-auto">
                <input type="date" class="form-control mb-4" style="height:50px;font-weight: bolder; font-size: 16px; border: solid" id="fechanac" placeholder="Fecha Nac">
            </div>
            <div class="col-sm-4 mb-3 mx-auto">
                <input type="text" class="form-control mb-4" style="height:50px;font-weight: bolder; font-size: 16px; border: solid" id="tiene_OS" placeholder="Obra Social">
            </div>
            <div class="col-sm-4 mb-3 mx-auto">
                <input type="text" class="form-control mb-4" style="height:50px; font-weight: bolder; font-size: 16px; border: solid" id="tipo_sangre" placeholder="Tipo de Sangre">

                <p><b>*</b>Solo menores de edad</p>
            </div>          
            <form name="editar" action="SvEditPacientes" method="GET">
                <div class="col-sm-4 mb-2 mx-auto">        
                    <label><b>Dni Responsable:</b></label>
                    <select type="text" class="form-control" style=" height:50px;font-weight: bolder; font-size: 16px; border: solid">
                        <option>-</option>
                        <option></option>
                        <option></option>
                    </select> 
                    <a href="altaResponsable.jsp" class="btn btn-info btn-block border-dark" style="font-weight: bolder; font-size: 16px; margin-top: 10px">
                        Agregar Responsable
                    </a>
                </div>
            </form> 
            <hr>
            <div class="col-sm-2 mb-3 mx-auto">
                <button class="btn btn-info btn-block mx-auto border-dark"style="font-weight: bolder; font-size: 16px" type="submit">
                    Ingresar Paciente
                </button>
            </div>
        </div>
    </form>
</div>    

<%@include file="components/bodyfinal.jsp"%>

