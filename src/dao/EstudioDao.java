package dao;

import util.Conexion;
import model.Estudio;

public class EstudioDao 
	extends Conexion<Estudio>	
	implements GenericDao<Estudio> {
	
	public EstudioDao(){
		super(Estudio.class);
	}
}

