package com.datos.sowadt3;


import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.entidades.sowadt3.Marca;

public class MarcaDAO {

	//Singleton
		public static MarcaDAO _Instancia;
		private MarcaDAO(){};
		public static MarcaDAO Instancia(){
			if(_Instancia==null){
				_Instancia = new MarcaDAO();
			}
			return _Instancia;
		}
		//endSingleton
		
		public ArrayList<Marca> ListaMarcaXFlag(int flagUid) throws Exception {
			Connection connection = Conexion.Instancia().conectar();
			ArrayList<Marca> listaMarca = new ArrayList<Marca>();
			Marca marca = null;
			try {
				CallableStatement callableStatement = connection.prepareCall("{call sp_ListaMarcaXFlags(?)}");
				callableStatement.setInt(1, flagUid);
				ResultSet rs = callableStatement.executeQuery();
				while (rs.next()) {
					marca = new Marca();
					marca.setUid(rs.getInt("Uid"));
					marca.setFlags(rs.getString("Flags"));
					marca.setNombre(rs.getString("Nombre"));
					marca.setDescripcion(rs.getString("Descripcion"));
					listaMarca.add(marca);
				}
			} catch (Exception e) {
				throw e;
			} finally {
				connection.close();
			}
			return listaMarca;
		}
		
		public ArrayList<Marca> ListaMarca() throws Exception {
			Connection connection = Conexion.Instancia().conectar();
			ArrayList<Marca> listaMarca = new ArrayList<Marca>();
			Marca marca = null;
			try {
				CallableStatement callableStatement = connection.prepareCall("{call SP_LISTARMARCA()}");
				ResultSet rs = callableStatement.executeQuery();
				while (rs.next()) {
					marca = new Marca();
					marca.setUid(rs.getInt("Uid"));
					marca.setFlags(rs.getString("Flags"));
					marca.setNombre(rs.getString("Nombre"));
					marca.setDescripcion(rs.getString("Descripcion"));
					listaMarca.add(marca);
				}
			} catch (Exception e) {
				throw e;
			} finally {
				connection.close();
			}
			return listaMarca;
		}
		
		public boolean insertarMarca(Marca marca) throws Exception {
			Connection cn = Conexion.Instancia().conectar();
			try {
				CallableStatement callableStatement = cn.prepareCall("{call SP_INSERTARMARCA(?,?,?)}");
				callableStatement.setString(1, marca.getFlags());
				callableStatement.setString(2, marca.getDescripcion());
				callableStatement.setString(3, marca.getNombre());
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
		
		public boolean modificarMarca(Marca marca) throws Exception {
			Connection cn = Conexion.Instancia().conectar();
			try {
				CallableStatement callableStatement = cn.prepareCall("{call SP_MODIFICARMARCA(?,?,?,?)}");
				callableStatement.setString(1, marca.getFlags());
				callableStatement.setString(2, marca.getDescripcion());
				callableStatement.setString(3, marca.getNombre());
				callableStatement.setInt(4, marca.getUid());
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
		
		public boolean eliminarMarca(int idMarca) throws Exception {
			Connection cn = Conexion.Instancia().conectar();
			try {
				CallableStatement callableStatement = cn.prepareCall("{call SP_ELIMINARMARCA(?)}");
				callableStatement.setInt(1, idMarca);
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
		
		public Marca devolverMarca(int idMarca) throws Exception {
			Connection connection = Conexion.Instancia().conectar();
			Marca marca = null;
			try {
				CallableStatement callableStatement = connection.prepareCall("{call SP_BUSCARMARCA(?)}");
				callableStatement.setInt(1, idMarca);
				ResultSet rs = callableStatement.executeQuery();
				if (rs.next()) {
					marca = new Marca();
					marca.setUid(rs.getInt("Uid"));
					marca.setFlags(rs.getString("Flags"));
					marca.setNombre(rs.getString("Nombre"));
					marca.setDescripcion(rs.getString("Descripcion"));
				}
			} catch (Exception e) {
				throw e;
			} finally {
				connection.close();
			}
			return marca;
		}
	
}
