package modelo;

import java.util.Objects;

public class Centro {

	private int cod_centro;
	private String nombre;
	private String direccion;
	
	
	public Centro() {
		super();
	}

	public Centro(int cod_centro, String nombre, String direccion) {
		super();
		this.cod_centro = cod_centro;
		this.nombre = nombre;
		this.direccion = direccion;
	}

	public int getCod_centro() {
		return cod_centro;
	}

	public void setCod_centro(int cod_centro) {
		this.cod_centro = cod_centro;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	@Override
	public int hashCode() {
		return Objects.hash(cod_centro);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Centro other = (Centro) obj;
		return cod_centro == other.cod_centro;
	}
	
	
	
}
