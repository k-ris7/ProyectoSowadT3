package com.negocio.sowadt3;

import java.util.ArrayList;

import com.datos.sowadt3.MarcaDAO;
import com.entidades.sowadt3.Marca;

public class MarcaNegocio {
	public static MarcaNegocio _Instancia;
	private MarcaNegocio(){};
	public static MarcaNegocio Instancia(){
		if(_Instancia==null){
			_Instancia = new MarcaNegocio();
		}
		return _Instancia;
	}
	
	public  ArrayList<Marca> ListaMarcaXFlag(int flagUid) throws Exception {
		try {
			return MarcaDAO.Instancia().ListaMarcaXFlag(flagUid);
		} catch (Exception e) {
			throw e;
		}
	}
	
	public  ArrayList<Marca> ListaMarca() throws Exception {
		try {
			return MarcaDAO.Instancia().ListaMarca();
		} catch (Exception e) {
			throw e;
		}
	}
	
	public boolean insertarMarca(Marca marca) throws Exception {
		try {
			if(marca.getNombre().equals("")){
				throw new Exception("Debe ingresar el nombre de la marca");				
			}
			if(marca.getDescripcion().equals("")){
				throw new Exception("Debe ingresar la descripcion de la marca");				
			}
			return MarcaDAO.Instancia().insertarMarca(marca);
		} catch (Exception e) {
			throw e;
		}
	}
	
	public boolean modificarMarca(Marca marca) throws Exception {
		try {
			if(marca.getNombre().equals("")){
				throw new Exception("Debe ingresar el nombre de la marca");				
			}
			if(marca.getDescripcion().equals("")){
				throw new Exception("Debe ingresar la descripcion de la marca");				
			}
			return MarcaDAO.Instancia().modificarMarca(marca);
		} catch (Exception e) {
			throw e;
		}
	}
	
	public boolean eliminarMarca(int idMarca) throws Exception {
		try {
			return MarcaDAO.Instancia().eliminarMarca(idMarca);
		} catch (Exception e) {
			throw e;
		}
	}
	
	public Marca devolverMarca(int idMarca) throws Exception {
		try {
			return MarcaDAO.Instancia().devolverMarca(idMarca);
		} catch (Exception e) {
			throw e;
		}
	}
}
