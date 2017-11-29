package com.datos.sowadt3;


import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.entidades.sowadt3.Categoria;
import com.entidades.sowadt3.Marca;

public class CategoriaDAO {
	
	public static CategoriaDAO _Instancia;
	private CategoriaDAO(){};
	public static CategoriaDAO Instancia(){
		if(_Instancia==null){
			_Instancia = new CategoriaDAO();
		}
		return _Instancia;
	}

	
	public ArrayList<Categoria> ListaCategoria() throws Exception {
		Connection connection = Conexion.Instancia().conectar();
		ArrayList<Categoria> listaCategoria = new ArrayList<Categoria>();
		Categoria categoria = null;
		try {
			CallableStatement callableStatement = connection.prepareCall("{call SP_LISTARCATEGORIA()}");
			ResultSet rs = callableStatement.executeQuery();
			while (rs.next()) {
				categoria = new Categoria();
				categoria.setUid(rs.getInt("Uid"));
				categoria.setNombre(rs.getString("Nombre"));
				categoria.setDescripcion(rs.getString("Descripcion"));
				ArrayList<Marca> listamarca =  new ArrayList<Marca>();
				listamarca = MarcaDAO.Instancia().ListaMarcaXFlag(categoria.getUid());
				categoria.setListaMarca(listamarca);
				listaCategoria.add(categoria);
			}
		} catch (Exception e) {
			throw e;
		} finally {
			connection.close();
		}
		return listaCategoria;
	}
	
	public boolean insertarCategoria(Categoria categoria) throws Exception {
		Connection cn = Conexion.Instancia().conectar();
		try {
			CallableStatement callableStatement = cn.prepareCall("{call SP_INSERTARCATEGORIA(?,?)}");
			callableStatement.setString(1, categoria.getDescripcion());
			callableStatement.setString(2, categoria.getNombre());
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
	
	public boolean modificarCategoria(Categoria categoria) throws Exception {
		Connection cn = Conexion.Instancia().conectar();
		try {
			CallableStatement callableStatement = cn.prepareCall("{call SP_MODIFICARCATEGORIA(?,?,?)}");
			callableStatement.setString(1, categoria.getDescripcion());
			callableStatement.setString(2, categoria.getNombre());
			callableStatement.setInt(3, categoria.getUid());
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
	
	public boolean eliminarCategoria(int idCategoria) throws Exception {
		Connection cn = Conexion.Instancia().conectar();
		try {
			CallableStatement callableStatement = cn.prepareCall("{call SP_ELIMINARCATEGORIA(?)}");
			callableStatement.setInt(1, idCategoria);
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
	
	public Categoria devolverCategoria(int idCategoria) throws Exception {
		Connection connection = Conexion.Instancia().conectar();
		Categoria categoria = null;
		try {
			CallableStatement callableStatement = connection.prepareCall("{call SP_BUSCARCATEGORIA(?)}");
			callableStatement.setInt(1, idCategoria);
			ResultSet rs = callableStatement.executeQuery();
			if (rs.next()) {
				categoria = new Categoria();
				categoria.setUid(rs.getInt("Uid"));
				categoria.setNombre(rs.getString("Nombre"));
				categoria.setDescripcion(rs.getString("Descripcion"));
			}
		} catch (Exception e) {
			throw e;
		} finally {
			connection.close();
		}
		return categoria;
	}
	
}
