package com.datos.sowadt3;


import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;

import com.entidades.sowadt3.Persona;
import com.entidades.sowadt3.Usuario;

public class UsuarioDAO {
	//Singleton
	public static UsuarioDAO _Instancia;
	private UsuarioDAO(){};
	public static UsuarioDAO Instancia(){
		if(_Instancia==null){
			_Instancia = new UsuarioDAO();
		}
		return _Instancia;
	}
	//endSingleton
	
	//Metodos
	public Usuario VerificarAcceso(String _Usuario, String _Pass) throws Exception {
		Connection cn = null;
		Usuario usuario = null;
		Persona persona = null;
		try {
			cn = Conexion.Instancia().conectar();
			CallableStatement cst = cn.prepareCall("{call SP_VERIFICARACCESO(?,?)}");
			cst.setString(1, _Usuario);
			cst.setString(2, _Pass);
			ResultSet rs = cst.executeQuery();
			if (rs.next()) {
				usuario = new Usuario();
				usuario.setNombreUsuario(rs.getString("NombreUsuario"));
				usuario.setUid(rs.getInt("Uid"));
					persona = new Persona();
					persona.setUid(rs.getInt("Uid"));
					persona.setNombre(rs.getString("Nombre"));
					persona.setApellidoPaterno(rs.getString("ApellidoPaterno"));
					persona.setApellidoMaterno(rs.getString("ApellidoMaterno"));
					persona.setDNI(rs.getString("DNI"));
					persona.setRazonSocial(rs.getString("RazonSocial"));
					persona.setTelefono(rs.getString("Telefono"));
					persona.setCelular(rs.getString("Celular"));
					persona.setDireccion(rs.getString("Direccion"));
					persona.setTipoPersona(rs.getString("TipoPersona"));
					persona.setActivo(rs.getBoolean("Activo"));
				usuario.setPersona(persona);
			}			
			return usuario;
		} catch (Exception e) {
			throw e;
		} finally {
			cn.close();
		}
	}
	
	
}