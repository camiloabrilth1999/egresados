package dao;

import util.Conexion;
import model.Programa;

public class ProgramaDao 
	extends Conexion<Programa>	
	implements GenericDao<Programa> {
	
	public ProgramaDao(){
		super(Programa.class);
	}
}

