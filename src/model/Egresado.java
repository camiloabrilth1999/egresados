package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the egresado database table.
 * 
 */
@Entity
@Table(name="egresado")
@NamedQuery(name="Egresado.findAll", query="SELECT e FROM Egresado e")
public class Egresado implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	private String clave;

	private String codigo;

	private String documento;

	private String email;

	private String nombre;

	@Lob
	private String perfil;

	private int programa;

	private String telefono;

	public Egresado() {
	}
	
	public Egresado(String documento, String nombre, String telefono, String email
			, String codigo, String clave, int programa) {
		this.documento = documento;
		this.nombre = nombre;
		this.telefono = telefono;
		this.email = email;
		this.codigo = codigo;
		this.clave = clave;
		this.programa = programa;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getClave() {
		return this.clave;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

	public String getCodigo() {
		return this.codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public String getDocumento() {
		return this.documento;
	}

	public void setDocumento(String documento) {
		this.documento = documento;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getPerfil() {
		return this.perfil;
	}

	public void setPerfil(String perfil) {
		this.perfil = perfil;
	}

	public int getPrograma() {
		return this.programa;
	}

	public void setPrograma(int programa) {
		this.programa = programa;
	}

	public String getTelefono() {
		return this.telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

}