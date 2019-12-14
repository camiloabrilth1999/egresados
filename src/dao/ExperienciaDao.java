package dao;

import util.Conexion;
import model.Experiencia;

public class ExperienciaDao 
	extends Conexion<Experiencia>	
	implements GenericDao<Experiencia> {
	
	public ExperienciaDao(){
		super(Experiencia.class);
	}
}

