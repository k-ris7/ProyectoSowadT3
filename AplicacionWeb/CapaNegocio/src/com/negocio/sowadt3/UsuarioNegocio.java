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
	public Usuario VerificarAcceso(String _User, String _Passw) throws Exception{
		try {
			if(_User.equals("")){
				throw new ArithmeticException("Debe ingresar su usuario");
			}
			if(_User.equals("")){
				throw new ArithmeticException("Debe ingresar su contraseņa");
			}
			Usuario usuario = UsuarioDAO.Instancia().VerificarAcceso(_User, _Passw);
			
			if(usuario == null){
				throw new Exception("Usuario o contraseņa no valida");
			}	
						
			if(usuario.getPersona().isActivo() == false){
				throw new Exception("Usuario INACTIVO");
			}
			return usuario;
		} catch (Exception e) {
			throw e;
		}
	}
	
}
