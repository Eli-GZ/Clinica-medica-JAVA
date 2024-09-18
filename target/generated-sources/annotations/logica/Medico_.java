package logica;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import logica.Horario;
import logica.Turno;
import logica.Usuario;

@Generated(value="EclipseLink-2.7.10.v20211216-rNA", date="2024-09-17T21:54:39")
@StaticMetamodel(Medico.class)
public class Medico_ extends Persona_ {

    public static volatile SingularAttribute<Medico, Usuario> unUsuario;
    public static volatile SingularAttribute<Medico, String> especialidad;
    public static volatile ListAttribute<Medico, Turno> listaTurnos;
    public static volatile SingularAttribute<Medico, Horario> unHorario;

}