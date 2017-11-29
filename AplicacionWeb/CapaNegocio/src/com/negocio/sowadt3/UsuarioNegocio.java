package com.negocio.sowadt3;

import com.datos.sowadt3.UsuarioDAO;
import com.entidades.sowadt3.Usuario;

public class UsuarioNegocio {
	//Singleton
	public static UsuarioNegocio _Instancia;
	private UsuarioNegocio(){};
	public static UsuarioNegocio Instancia(){
		if(_Instancia==null){
			_Instancia = new UsuarioNegocio();
		}
		return _Instancia;
	}
	//endSingleton
	
	
}
