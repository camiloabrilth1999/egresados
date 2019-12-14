package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the estudio database table.
 * 
 */
@Entity
@NamedQuery(name="Estudio.findAll", query="SELECT e FROM Estudio e")
public class Estudio implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	private int egresado;

	private String lugar;

	private int nivel;

	private String periodofin;

	private String titulo;

	public Estudio() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getEgresado() {
		return this.egresado;
	}

	public void setEgresado(int egresado) {
		this.egresado = egresado;
	}

	public String getLugar() {
		return this.lugar;
	}

	public void setLugar(String lugar) {
		this.lugar = lugar;
	}

	public int getNivel() {
		return this.nivel;
	}

	public void setNivel(int nivel) {
		this.nivel = nivel;
	}

	public String getPeriodofin() {
		return this.periodofin;
	}

	public void setPeriodofin(String periodofin) {
		this.periodofin = periodofin;
	}

	public String getTitulo() {
		return this.titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

}