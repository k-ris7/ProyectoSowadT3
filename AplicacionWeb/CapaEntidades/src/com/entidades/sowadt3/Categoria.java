package com.entidades.sowadt3;


import java.util.ArrayList;

public class Categoria {
	
	private int Uid;
	private String Nombre;
	private String Descripcion;
	private boolean Activo;
	private ArrayList<Marca> ListaMarca;
	public int getUid() {
		return Uid;
	}
	public ArrayList<Marca> getListaMarca() {
		return ListaMarca;
	}
	public void setListaMarca(ArrayList<Marca> listaMarca) {
		ListaMarca = listaMarca;
	}
	public void setUid(int uid) {
		Uid = uid;
	}
	public String getNombre() {
		return Nombre;
	}
	public void setNombre(String nombre) {
		Nombre = nombre;
	}
	public String getDescripcion() {
		return Descripcion;
	}
	public void setDescripcion(String descripcion) {
		Descripcion = descripcion;
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
