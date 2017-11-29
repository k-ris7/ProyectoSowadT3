package com.datos.sowadt3;


import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.entidades.sowadt3.Cliente;
import com.entidades.sowadt3.Persona;

public class ClienteDAO {
	//Singleton
	public static ClienteDAO _Instancia;
	private ClienteDAO(){};
	public static ClienteDAO Instancia(){
		if(_Instancia==null){
			_Instancia = new ClienteDAO();
		}
		return _Instancia;
	}
	//endSingleton
	
	//Metodos
		public Cliente VerificarAccesoCliente(String _Usuario, String _Pass) throws Exception {
			Connection cn = null;
			Cliente cliente = null;
			Persona persona = null;
			try {
				cn = Conexion.Instancia().conectar();
				CallableStatement cst = cn.prepareCall("{call SP_VERIFICARACCESOCLIENTE(?,?)}");
				cst.setString(1, _Usuario);
				cst.setString(2, _Pass);
				ResultSet rs = cst.executeQuery();
				if (rs.next()) {
					cliente = new Cliente();
					cliente.setUsuario(rs.getString("Usuario"));
					cliente.setUid(rs.getInt("IDCLIENTE"));
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
					cliente.setPersona(persona);
				}			
				return cliente;
			} catch (Exception e) {
				throw e;
			} finally {
				cn.close();
			}
		}
		
		public ArrayList<Cliente> listarCliente() throws Exception {
			Connection connection = Conexion.Instancia().conectar();
			ArrayList<Cliente> listaCliente = new ArrayList<Cliente>();
			Cliente cliente = null;
			Persona persona = null;
			try {
				CallableStatement callableStatement = connection.prepareCall("{call SP_LISTARCLIENTE()}");
				ResultSet rs = callableStatement.executeQuery();

				while (rs.next()) {
					cliente = new Cliente();
					cliente.setUid(rs.getInt("IDCLIENTE"));
					cliente.setUsuario(rs.getString("Usuario"));
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
					cliente.setPersona(persona);
					listaCliente.add(cliente);
				}
			} catch (Exception e) {
				throw e;
			} finally {
				connection.close();
			}
			return listaCliente;
		}
		
		public boolean insertarCliente(Cliente cliente) throws Exception {
			Connection cn = Conexion.Instancia().conectar();
			try {
				CallableStatement callableStatement = cn.prepareCall("{call SP_INSERTARCLIENTE(?,?,?,?,?,?,?,?,?,?,?)}");
				callableStatement.setString(1, cliente.getPersona().getNombre());
				callableStatement.setString(2, cliente.getPersona().getApellidoPaterno());
				callableStatement.setString(3, cliente.getPersona().getApellidoMaterno());
				callableStatement.setString(4, cliente.getPersona().getDNI());
				callableStatement.setString(5, cliente.getPersona().getRazonSocial());
				callableStatement.setString(6, cliente.getPersona().getTelefono());
				callableStatement.setString(7, cliente.getPersona().getCelular());
				callableStatement.setString(8, cliente.getPersona().getDireccion());
				callableStatement.setString(9, cliente.getPersona().getTipoPersona());
				callableStatement.setString(10, cliente.getUsuario());
				callableStatement.setString(11, cliente.getPass());
				int i = callableStatement.executeUpdate();

				if (i > 0)
					return true;

			} catch (Exception e) {
				throw e;
			} finally {
				cn.close();
			}
			return false;
		}
		
		public boolean modificarCliente(Cliente cliente) throws Exception {
			Connection cn = Conexion.Instancia().conectar();
			try {
				CallableStatement callableStatement = cn.prepareCall("{call SP_MODIFICARCLIENTE(?,?,?,?,?,?,?,?,?,?,?,?)}");
				callableStatement.setString(1, cliente.getPersona().getNombre());
				callableStatement.setString(2, cliente.getPersona().getApellidoPaterno());
				callableStatement.setString(3, cliente.getPersona().getApellidoMaterno());
				callableStatement.setString(4, cliente.getPersona().getDNI());
				callableStatement.setString(5, cliente.getPersona().getRazonSocial());
				callableStatement.setString(6, cliente.getPersona().getTelefono());
				callableStatement.setString(7, cliente.getPersona().getCelular());
				callableStatement.setString(8, cliente.getPersona().getDireccion());
				callableStatement.setString(9, cliente.getPersona().getTipoPersona());
				callableStatement.setString(10, cliente.getUsuario());
				callableStatement.setString(11, cliente.getPass());
				callableStatement.setInt(12, cliente.getUid());
				int i = callableStatement.executeUpdate();

				if (i > 0)
					return true;

			} catch (Exception e) {
				throw e;
			} finally {
				cn.close();
			}
			return false;
		}
		
		public boolean eliminarCliente(int idCliente) throws Exception {
			Connection cn = Conexion.Instancia().conectar();
			try {
				CallableStatement callableStatement = cn.prepareCall("{call SP_ELIMINARCLIENTE(?)}");
				callableStatement.setInt(1, idCliente);
				int i = callableStatement.executeUpdate();

				if (i > 0)
					return true;

			} catch (Exception e) {
				throw e;
			} finally {
				cn.close();
			}
			return false;
		}
		
		public Cliente devolverCliente(int idCliente) throws Exception {
			Connection connection = Conexion.Instancia().conectar();
			Cliente cliente = null;
			Persona persona = null;
			try {
				CallableStatement callableStatement = connection.prepareCall("{call SP_BUSCARCLIENTE(?)}");
				callableStatement.setInt(1, idCliente);
				ResultSet rs = callableStatement.executeQuery();
				if (rs.next()) {
					cliente = new Cliente();
					cliente.setUsuario(rs.getString("Usuario"));
					cliente.setPass(rs.getString("Pass"));
					cliente.setUid(rs.getInt("IDCLIENTE"));
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
					cliente.setPersona(persona);
				}			
				return cliente;
			} catch (Exception e) {
				throw e;
			} finally {
				connection.close();
			}
		}
		//endMetodos
}
