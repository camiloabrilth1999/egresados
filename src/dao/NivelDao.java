package dao;

import util.Conexion;
import model.Nivel;

public class NivelDao 
	extends Conexion<Nivel>	
	implements GenericDao<Nivel> {
	
	public NivelDao(){
		super(Nivel.class);
	}
}

