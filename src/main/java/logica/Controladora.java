package logica;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import persistencia.ControladoraPersistencia;

public class Controladora {

    ControladoraPersistencia controlPersis = new ControladoraPersistencia();

    public void crearUsuario(String nombreUsuario, String contrasenia, String rol) {

        Usuario usu = new Usuario();
        usu.setNombreUsuario(nombreUsuario);
        usu.setContrasenia(contrasenia);
        usu.setRol(rol);

        controlPersis.crearUsuario(usu);
    }

    public List<Usuario> traerUsuarios() {
        return controlPersis.traerUsuarios();
    }

    public void borrarUsuario(int id) {

        controlPersis.borrarUsuario(id);

    }

    public Usuario traerUsuario(int id) {

        return controlPersis.traerUsuario(id);
    }

    public void editarUsuario(Usuario usu) {

        controlPersis.editarUsuario(usu);
    }

    public boolean comprobarIngreso(String usuario, String contrasenia) {
        boolean ingreso = false;
        List<Usuario> listaUsuario = new ArrayList<Usuario>();
        listaUsuario = controlPersis.traerUsuarios();

        for (Usuario usu : listaUsuario) {
            if (usu.getNombreUsuario().equals(usuario)) {
                if (usu.getContrasenia().equals(contrasenia)) {
                    ingreso = true;

                } else {
                    ingreso = false;
                }
            }
        }
        return ingreso;
    }

    public void crearMedico(String dni, String nombreMedico, String apellido, String telMed, String direcMed, String FechaMed, String specMed) {

        /*   try {
            SimpleDateFormat formato = new SimpleDateFormat("dd/mm/yyyy");
            Date fecha = formato.parse(FechaMed);            

            Medico med = new Medico();
          

                        
            med.setDni(dni);
            med.setNombre(nombreMedico);
            med.setApellido(apellido);
            med.setTelefono(telMed);
            med.setDireccion(direcMed);
            med.setFecha_nac(fecha);
            med.setEspecialidad(specMed);

            controlPersis.crearMedico(med);
        } catch (ParseException ex) {
            Logger.getLogger(Controladora.class.getName()).log(Level.SEVERE, null, ex);
        }*/
    }

    public void crearResponsable(String dni, String nombre, String apellido, String telResp, String direcResp, String fechaResp, String tipoResp) {

        try {
            
            SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
            Date fecha = formato.parse(fechaResp);

            Responsable resp = new Responsable();

            resp.setDni(dni);
            resp.setNombre(nombre);
            resp.setApellido(apellido);
            resp.setTelefono(telResp);
            resp.setDireccion(direcResp);
            resp.setFecha_nac(fecha);
            resp.setTipo_resp(tipoResp);

            controlPersis.crearResponsable(resp);
        } catch (ParseException ex) {
            Logger.getLogger(Controladora.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<Responsable> traerResponsables() {
        return controlPersis.traerResponsables();
    }

    public void crearPacientes(String dni, String nombre, String apellido, String telPaci, String direcPaci, String fechaPaci, String obraSo, String tipo_Sangre, String idResp) throws ParseException {
        /*   SimpleDateFormat formato = new SimpleDateFormat("yyyy-mm-dd");
        Date fecha = formato.parse(fechaPaci);

        Paciente paci = new Paciente();
        
        Responsable respo ()

        paci.setDni(dni);
        paci.setNombre(nombre);
        paci.setApellido(apellido);
        paci.setTelefono(telPaci);
        paci.setDireccion(direcPaci);
        paci.setFecha_nac(fecha);
        paci.setTiene_OS(true);
        paci.setTipo_sangre(tipo_Sangre);
        paci.setUnResponsable(idResp);

        controlPersis.crearPacientes(paci);*/

    }

    public void borrarResponsable(int id) {
        controlPersis.borrarResponsable(id);
    }

    public Responsable traerResponsable(int id) {
        return controlPersis.traerResponsable(id);
    }

}
