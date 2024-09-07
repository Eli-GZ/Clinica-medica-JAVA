package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Responsable;

@WebServlet(name = "SvResponsable", urlPatterns = {"/SvResponsable"})
public class SvResponsable extends HttpServlet {

    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Responsable> listaResponsables = new ArrayList<Responsable>();

        listaResponsables = control.traerResponsables();

        HttpSession miSesion = request.getSession();
        miSesion.setAttribute("listaResponsables", listaResponsables);

        response.sendRedirect("verResponsables.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String dni = request.getParameter("dniResp");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String telResp = request.getParameter("tel");
        String direcResp = request.getParameter("direc");
        String fechaResp = request.getParameter("fecha_nac");
        String tipoResp = request.getParameter("tipo_resp");

        control.crearResponsable(dni, nombre, apellido, telResp, direcResp, fechaResp, tipoResp);

        response.sendRedirect("altaResponsable.jsp");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
