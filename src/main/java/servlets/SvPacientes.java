package servlets;

import java.io.IOException;
import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
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

        int id = Integer.parseInt(request.getParameter("id"));
        Responsable resp = control.traerResponsable(id);

        HttpSession misesion = request.getSession();
        misesion.setAttribute("respEditar", resp);

        response.sendRedirect("SvPacientes");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String dni = request.getParameter("dnipaci");
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String telPaci = request.getParameter("tel");
            String direcPaci = request.getParameter("direc");
            String fechaPaci = request.getParameter("fecha_nac");
            String obraSo = request.getParameter("obraSo");
            String tipo_Sangre = request.getParameter("tipo_sangre");
            String idResp = request.getParameter("id_Resp");

            control.crearPacientes(dni, nombre, apellido, telPaci, direcPaci, fechaPaci, obraSo, tipo_Sangre, idResp);

            response.sendRedirect("altaPacientes.jsp");
        } catch (ParseException ex) {
            Logger.getLogger(SvPacientes.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
