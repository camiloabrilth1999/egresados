package dao;

import util.Conexion;
import model.Usuario;

public class UsuarioDao 
	extends Conexion<Usuario>	
	implements GenericDao<Usuario> {
	
	public UsuarioDao(){
		super(Usuario.class);
	}
}

