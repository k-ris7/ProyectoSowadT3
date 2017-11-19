package com.entidades.sowadt3;


public class Marca {
	
	private int Uid;
	private String Flags;
	private String Descripcion;
	private String Nombre;
	private boolean Activo;
	public int getUid() {
		return Uid;
	}
	public void setUid(int uid) {
		Uid = uid;
	}
	public String getFlags() {
		return Flags;
	}
	public void setFlags(String flags) {
		Flags = flags;
	}
	public String getDescripcion() {
		return Descripcion;
	}
	public void setDescripcion(String descripcion) {
		Descripcion = descripcion;
	}
	public String getNombre() {
		return Nombre;
	}
	public void setNombre(String nombre) {
		Nombre = nombre;
	}
	public boolean isActivo() {
		return Activo;
	}
	public void setActivo(boolean activo) {
		Activo = activo;
	}
	
	@Override
	public String toString(){
		return Nombre;
	}

}
