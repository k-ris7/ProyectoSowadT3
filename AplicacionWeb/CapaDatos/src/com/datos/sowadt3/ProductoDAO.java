package com.datos.sowadt3;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.entidades.sowadt3.Categoria;
import com.entidades.sowadt3.Marca;
import com.entidades.sowadt3.Producto;

public class ProductoDAO {
	//Singleton
	public static ProductoDAO _Instancia;
	private ProductoDAO(){};
	public static ProductoDAO Instancia(){
		if(_Instancia==null){
			_Instancia = new ProductoDAO();
		}
		return _Instancia;
	}
	//endSingleton
	
	public ArrayList<Producto> listarProductosPorCategoria(int idCategoria) throws Exception {
		Connection connection = Conexion.Instancia().conectar();
		ArrayList<Producto> listaProducto = new ArrayList<Producto>();
		Producto producto = null;
		Categoria categoria = null;
		try {
			CallableStatement callableStatement = connection.prepareCall("{call SP_LISTARPRODUCTOSPORCATEGORIA(?)}");
			callableStatement.setInt(1, idCategoria);
			ResultSet rs = callableStatement.executeQuery();
			while (rs.next()) {
				producto = new Producto();
					producto.setUid(rs.getInt("Uid"));		
					producto.setCodigo(rs.getString("Codigo"));
					producto.setNombre(rs.getString("NOMBRE"));
					producto.setPrecioVenta(rs.getDouble("PrecioVenta"));
					producto.setPrecioCosto(rs.getDouble("PrecioCosto"));
					producto.setStock(rs.getInt("Stock"));
					producto.setImagen(rs.getString("Imagen"));
					producto.setActivo(rs.getBoolean("Activo"));
					producto.setFechaIngreso(rs.getDate("FechaIngreso"));
				categoria = new Categoria();
				categoria.setUid(rs.getInt("CATEGORIAID"));
				categoria.setNombre(rs.getString("CATEGORIA"));
				producto.setCategoria(categoria);
				listaProducto.add(producto);
			}
		} catch (Exception e) {
			throw e;
		} finally {
			connection.close();
		}
		return listaProducto;
	}
	
	public ArrayList<Producto> listarProductosPorMarca(int idMarca) throws Exception {
		Connection connection = Conexion.Instancia().conectar();
		ArrayList<Producto> listaProducto = new ArrayList<Producto>();
		Producto producto = null;
		Marca marca = null;
		try {
			CallableStatement callableStatement = connection.prepareCall("{call SP_LISTARPRODUCTOSPORMARCA(?)}");
			callableStatement.setInt(1, idMarca);
			ResultSet rs = callableStatement.executeQuery();

			while (rs.next()) {
				producto = new Producto();
					producto.setUid(rs.getInt("Uid"));		
					producto.setCodigo(rs.getString("Codigo"));
					producto.setNombre(rs.getString("Nombre"));
					producto.setPrecioVenta(rs.getDouble("PrecioVenta"));
					producto.setPrecioCosto(rs.getDouble("PrecioCosto"));
					producto.setStock(rs.getInt("Stock"));
					producto.setActivo(rs.getBoolean("Activo"));
					producto.setImagen(rs.getString("Imagen"));
					producto.setFechaIngreso(rs.getDate("FechaIngreso"));
				marca = new Marca();
					marca.setUid(rs.getInt("MARCAID"));
					marca.setNombre(rs.getString("NOMBRECATEGORIA"));
					marca.setDescripcion(rs.getString("DESCRIPCION"));
				producto.setMarca(marca);
				listaProducto.add(producto);
			}
		} catch (Exception e) {
			throw e;
		} finally {
			connection.close();
		}
		return listaProducto;
	}
	
	public  ArrayList<Producto> ListarProductosXCategoriaXMarca(int categoriaUid,int marcaUid) throws Exception {
		Connection connection = Conexion.Instancia().conectar();
		ArrayList<Producto> listaProductos = new ArrayList<Producto>();

		try {
			CallableStatement callableStatement = connection.prepareCall("{call sp_ListaProductos(?,?)}");
			callableStatement.setInt(1, categoriaUid);
			callableStatement.setInt(2, marcaUid);
			ResultSet resultSet = callableStatement.executeQuery();

			while (resultSet.next()) {
				Producto producto = new Producto();
				producto.setUid(resultSet.getInt("Uid"));
					Categoria cat = new Categoria();
					cat.setUid(resultSet.getInt("CategoriaUid"));
					cat.setNombre(resultSet.getString("NombreCategoria"));				
					producto.setCategoria(cat);
					
					Marca marca = new Marca();
					marca.setUid(resultSet.getInt("MarcaUid"));
					marca.setNombre(resultSet.getString("NombreMarca"));
					
					producto.setMarca(marca);
				
				producto.setCodigo(resultSet.getString("Codigo"));
				producto.setPrecioVenta(resultSet.getDouble("PrecioVenta"));
				producto.setPrecioCosto(resultSet.getDouble("PrecioCosto"));
				producto.setStock(resultSet.getInt("Stock"));
				producto.setImagen(resultSet.getString("Imagen"));
				producto.setFechaIngreso(resultSet.getDate("FechaIngreso"));
				producto.setNombre(resultSet.getString("NOMBRE"));
				listaProductos.add(producto);
			}
		} catch (Exception e) {
			throw e;
		} finally {
			connection.close();
		}
		return listaProductos;
	}
	
	
	public boolean insertarProducto(Producto producto) throws Exception {
		Connection cn = Conexion.Instancia().conectar();
		try {
			CallableStatement callableStatement = cn.prepareCall("{call SP_INSERTARPRODUCTO(?,?,?,?,?,?,?,?)}");
			callableStatement.setString(1, producto.getCodigo());
			callableStatement.setDouble(2, producto.getPrecioVenta());
			callableStatement.setDouble(3, producto.getPrecioCosto());
			callableStatement.setInt(4, producto.getStock());
			callableStatement.setString(5, producto.getImagen());
			callableStatement.setString(6, producto.getNombre());
			callableStatement.setInt(7, producto.getCategoria().getUid());
			callableStatement.setInt(8, producto.getMarca().getUid());
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
	
	public boolean modificarProducto(Producto producto) throws Exception {
		Connection cn = Conexion.Instancia().conectar();
		try {
			CallableStatement callableStatement = cn.prepareCall("{call SP_MODIFICARPRODUCTO(?,?,?,?,?,?,?,?,?,?)}");
			callableStatement.setString(1, producto.getCodigo());
			callableStatement.setDouble(2, producto.getPrecioVenta());
			callableStatement.setDouble(3, producto.getPrecioCosto());
			callableStatement.setInt(4, producto.getStock());
			callableStatement.setString(5, producto.getImagen());
			callableStatement.setDate(6, producto.getFechaIngreso());
			callableStatement.setString(7, producto.getNombre());
			callableStatement.setInt(8, producto.getCategoria().getUid());
			callableStatement.setInt(9, producto.getMarca().getUid());
			callableStatement.setInt(10, producto.getUid());
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
	
	public boolean eliminarProducto(int idProducto) throws Exception {
		Connection cn = Conexion.Instancia().conectar();
		try {
			CallableStatement callableStatement = cn.prepareCall("{call SP_ELIMINARPRODUCTO(?)}");
			callableStatement.setInt(1, idProducto);
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
	
	public Producto devolverProducto(int idProducto) throws Exception {
		Connection connection = Conexion.Instancia().conectar();
		Producto producto = null;
		Marca marca = null;
		Categoria categoria = null;
		try {
			CallableStatement callableStatement = connection.prepareCall("{call SP_BUSCARPRODUCTO(?)}");
			callableStatement.setInt(1, idProducto);
			ResultSet rs = callableStatement.executeQuery();

			if (rs.next()) {
				producto = new Producto();
					producto.setUid(rs.getInt("Uid"));		
					producto.setCodigo(rs.getString("Codigo"));
					producto.setNombre(rs.getString("Nombre"));
					producto.setPrecioVenta(rs.getDouble("PrecioVenta"));
					producto.setPrecioCosto(rs.getDouble("PrecioCosto"));
					producto.setStock(rs.getInt("Stock"));
					producto.setActivo(rs.getBoolean("Activo"));
					producto.setImagen(rs.getString("Imagen"));
					producto.setFechaIngreso(rs.getDate("FechaIngreso"));
				categoria = new Categoria();
					categoria.setUid(rs.getInt("CategoriaUid"));
					categoria.setNombre(rs.getString("NombreCategoria"));			
					categoria.setDescripcion(rs.getString("DESCRIPCION"));	
					ArrayList<Marca> listamarca =  new ArrayList<Marca>();
					listamarca = MarcaDAO.Instancia().ListaMarcaXFlag(categoria.getUid());
					categoria.setListaMarca(listamarca);
				marca = new Marca();
					marca.setUid(rs.getInt("MarcaUid"));
					producto.setMarca(marca);
				producto.setCategoria(categoria);
			}
		} catch (Exception e) {
			throw e;
		} finally {
			connection.close();
		}
		return producto;
	}
	
	public  ArrayList<Producto> ListarProductos_All() throws Exception {
		Connection connection = Conexion.Instancia().conectar();
		ArrayList<Producto> listaProductos = new ArrayList<Producto>();

		try {
			CallableStatement callableStatement = connection.prepareCall("{call SP_LISTARPRODUCTOS_ALL()}");
			ResultSet resultSet = callableStatement.executeQuery();

			while (resultSet.next()) {
				Producto producto = new Producto();
				producto.setUid(resultSet.getInt("Uid"));
					Categoria cat = new Categoria();
					cat.setUid(resultSet.getInt("CategoriaUid"));
					cat.setNombre(resultSet.getString("NombreCategoria"));				
					producto.setCategoria(cat);
					
					Marca marca = new Marca();
					marca.setUid(resultSet.getInt("MarcaUid"));
					marca.setNombre(resultSet.getString("NombreMarca"));
					
					producto.setMarca(marca);
				
				producto.setCodigo(resultSet.getString("Codigo"));
				producto.setPrecioVenta(resultSet.getDouble("PrecioVenta"));
				producto.setPrecioCosto(resultSet.getDouble("PrecioCosto"));
				producto.setStock(resultSet.getInt("Stock"));
				producto.setImagen(resultSet.getString("Imagen"));
				producto.setFechaIngreso(resultSet.getDate("FechaIngreso"));
				producto.setNombre(resultSet.getString("NOMBRE"));
				listaProductos.add(producto);
			}
		} catch (Exception e) {
			throw e;
		} finally {
			connection.close();
		}
		return listaProductos;
	}
	
	//endMetodos
}
