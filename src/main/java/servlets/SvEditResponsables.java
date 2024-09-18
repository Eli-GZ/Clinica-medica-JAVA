package servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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

@WebServlet(name = "SvEditResponsables", urlPatterns = {"/SvEditResponsables"})
public class SvEditResponsables extends HttpServlet {

    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        Responsable resp = control.traerResponsable(id);

        HttpSession miSesion = request.getSession();
        miSesion.setAttribute("respEditar", resp);

        response.sendRedirect("editarResponsables.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String dni = request.getParameter("dniResp");
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String telResp = request.getParameter("tel");
            String direcResp = request.getParameter("direc");
            String fechaResp = request.getParameter("fecha_nac");
            String tipoResp = request.getParameter("tipo_resp");
            
            Responsable resp = (Responsable) request.getSession().getAttribute("respEditar");
            
            SimpleDateFormat formato = new SimpleDateFormat("dd-MM-yyyy");
            Date fecha = formato.parse(fechaResp);            
            
            
            resp.setDni(dni);
            resp.setNombre(nombre);
            resp.setApellido(apellido);
            resp.setTelefono(telResp);
            resp.setDireccion(direcResp);
            resp.setFecha_nac(fecha);
            resp.setTipo_resp(tipoResp);
            
            control.editarResponsable(resp);
            
            response.sendRedirect("SvResponsable");
        } catch (ParseException ex) {
            Logger.getLogger(SvEditResponsables.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
