package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Controladora;

@WebServlet(name = "SvMedicos", urlPatterns = {"/SvMedicos"})
public class SvMedicos extends HttpServlet {

    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

        String dni = request.getParameter("dniMed");
        String nombreMedico = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String telMed = request.getParameter("tel");
        String direcMed = request.getParameter("direc");
        String FechaMed = request.getParameter("Fecha_nac");
        String specMed = request.getParameter("spec");

        control.crearMedico(dni, nombreMedico, apellido, telMed, direcMed, FechaMed, specMed);        

        response.sendRedirect("altaMedicos.jsp");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
