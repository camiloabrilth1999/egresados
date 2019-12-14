package dao;

import util.Conexion;
import model.Egresado;

public class EgresadoDao 
	extends Conexion<Egresado>	
	implements GenericDao<Egresado> {
	
	public EgresadoDao(){
		super(Egresado.class);
	}
}

