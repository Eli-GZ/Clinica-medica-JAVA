package servlets;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Paciente;
import logica.Responsable;

@WebServlet(name = "SvPacientes", urlPatterns = {"/SvPacientes"})
public class SvPacientes extends HttpServlet {

    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Paciente> listaPacientes = new ArrayList<Paciente>();

        listaPacientes = control.traerPacientes();

        HttpSession miSesion = request.getSession();
        miSesion.setAttribute("listaPacientes", listaPacientes);

        response.sendRedirect("verPacientes.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String dni = request.getParameter("dnipaci");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String telPaci = request.getParameter("telefono");
        String direcPaci = request.getParameter("direccion");
        String fechaPaci = request.getParameter("fechanac");
        String obraSo = request.getParameter("obraSo");
        String tipo_Sangre = request.getParameter("tipo_sangre");
        String dniResp = request.getParameter("dniResp");

        control.crearPacientes(dni, nombre, apellido, telPaci, direcPaci, fechaPaci, obraSo, tipo_Sangre, dniResp);

        response.sendRedirect("SvPacientes");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
