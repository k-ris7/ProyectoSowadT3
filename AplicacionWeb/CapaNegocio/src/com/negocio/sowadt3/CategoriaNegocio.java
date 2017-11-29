package com.negocio.sowadt3;

import java.util.ArrayList;

import com.datos.sowadt3.CategoriaDAO;
import com.entidades.sowadt3.Categoria;

public class CategoriaNegocio {

	public static CategoriaNegocio _Instancia;
	private CategoriaNegocio(){};
	public static CategoriaNegocio Instancia(){
		if(_Instancia==null){
			_Instancia = new CategoriaNegocio();
		}
		return _Instancia;
	}
	
	public  ArrayList<Categoria> ListaCategoria() throws Exception {
		try {
			return CategoriaDAO.Instancia().ListaCategoria();
		} catch (Exception e) {
			throw e;
		}
	}
	
	public boolean insertarCategoria(Categoria categoria) throws Exception {
		try {
			if(categoria.getNombre().equals("")){
				throw new Exception("Debe ingresar el nombre de la categoría");				
			}
			if(categoria.getDescripcion().equals("")){
				throw new Exception("Debe ingresar la descripcion de la categoría");				
			}
			return CategoriaDAO.Instancia().insertarCategoria(categoria);
		} catch (Exception e) {
			throw e;
		}
	}
	
	public boolean modificarCategoria(Categoria categoria) throws Exception {
		try {
			if(categoria.getNombre().equals("")){
				throw new Exception("Debe ingresar el nombre de la categoría");				
			}
			if(categoria.getDescripcion().equals("")){
				throw new Exception("Debe ingresar la descripcion de la categoría");				
			}
			return CategoriaDAO.Instancia().modificarCategoria(categoria);
		} catch (Exception e) {
			throw e;
		}
	}
	
	public boolean eliminarCategoria(int idCategoria) throws Exception {
		try {
			return CategoriaDAO.Instancia().eliminarCategoria(idCategoria);
		} catch (Exception e) {
			throw e;
		}
	}
	
	public Categoria devolverCategoria(int idCategoria) throws Exception {
		try {
			return CategoriaDAO.Instancia().devolverCategoria(idCategoria);
		} catch (Exception e) {
			throw e;
		}
	}
	
}
