<%@page import="logica.Responsable"%>
<%@page import="logica.Paciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/header.jsp"%>
<%@include file="components/bodyinicio.jsp"%>


<div class="form-group col">
    <div class="col-sm-6 mb-3 mx-auto">
        <h1>Alta Pacientes</h1>
        <p>Completa los datos:</p></div>  </div>                 
        <%              List<Responsable> listaResponsables = (List) request.getSession().getAttribute("listaResponsables");
        %>
<div>    
    <form class="user" action="SvPacientes" method="POST">
        <div class="form-group col">
            <div class="col-sm-4 mb-3 mx-auto">
                <input type="text" class="form-control mb-4" style="height:50px; font-weight: bolder; font-size: 16px; border: solid" id="dnipaci" placeholder="DNI" name="dnipaci" required="">
            </div>
            <div class="col-sm-4 mb-3 mx-auto">
                <input type="text" class="form-control mb-4" style="height:50px;font-weight: bolder; font-size: 16px; border: solid" id="nombre" placeholder="Nombre" name="nombre" required="">
            </div>
            <div class="col-sm-4 mb-3 mx-auto">
                <input type="text" class="form-control mb-4" style="height:50px;font-weight: bolder; font-size: 16px; border: solid" id="apellido" placeholder="Apellido" name="apellido" required="">
            </div>
            <div class="col-sm-4 mb-3 mx-auto">
                <input type="text" class="form-control mb-4" style="height:50px;font-weight: bolder; font-size: 16px; border: solid" id="telefono" placeholder="Teléfono" name="telefono" required="">
            </div>
            <div class="col-sm-4 mb-3 mx-auto">
                <input type="text" class="form-control mb-4" style="height:50px;font-weight: bolder; font-size: 16px; border: solid" id="direccion" placeholder="Dirección" name="direccion" required="">
            </div>
            <div class="col-sm-4 mb-3 mx-auto">
                <input type="date" class="form-control mb-4" style="height:50px;font-weight: bolder; font-size: 16px; border: solid" id="fechanac" placeholder="Fecha Nac" name="fechanac" required="">
            </div>
            <div class="col-sm-4 mb-3 mx-auto">
                <input type="text" class="form-control mb-4" style="height:50px; font-weight: bolder; font-size: 16px; border: solid" id="tipo_sangre" placeholder="Tipo de Sangre" name="tipo_sangre" required="">
            </div> 

            <div class="col-sm-4 mb-3 mx-auto">               
                <label><b>¿Tiene obra social?</b></label>
                <select type="text" class="form-control" style=" height:50px;font-weight: bolder; font-size: 16px; border: solid" id="obraSo" name="obraSo">
                    <option>SI</option>                   
                    <option>NO</option>                     
                </select>    
            </div>

            <div class="col-sm-4 mb-2 mx-auto">        
                <label><b>Dni Responsable:</b></label>
                <select type="text" class="form-control" style=" height:50px;font-weight: bolder; font-size: 16px; border: solid" id="dniRespo" name="dniRespo">
                    <option>-</option>
                    <%
                        for (Responsable resp : listaResponsables) {

                    %>
                    <option><%= resp.getDni()%></option>   
                    <%}%>
                </select> 
                <p><b>*</b>Solo menores de edad</p>
                <a href="altaResponsable.jsp" class="btn btn-info btn-block border-dark" style="font-weight: bolder; font-size: 16px; margin-top: 10px">
                    Agregar Responsable
                </a>
            </div>            

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

