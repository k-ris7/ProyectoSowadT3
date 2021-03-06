package com.negocio.sowadt3;
import java.util.ArrayList;

import com.datos.sowadt3.ProductoDAO;
import com.entidades.sowadt3.Producto;
public class ProductoNegocio {

	//Singleton
	public static ProductoNegocio _Instancia;
	private ProductoNegocio(){};
	public static ProductoNegocio Instancia(){
		if(_Instancia==null){
			_Instancia = new ProductoNegocio();
		}
		return _Instancia;
	}
	//endSingleton
	
	public  ArrayList<Producto> ListarProductosXCategoriaXMarca(int categoriaUid,int marcaUid) throws Exception {
		try {
			return ProductoDAO.Instancia().ListarProductosXCategoriaXMarca(categoriaUid,marcaUid);
		} catch (Exception e) {
			throw e;
		}
	}
	
	public  ArrayList<Producto> ListarProductos_All() throws Exception {
		try {
			return ProductoDAO.Instancia().ListarProductos_All();
		} catch (Exception e) {
			throw e;
		}
	}
	

	public boolean insertarProducto(Producto producto) throws Exception {
		try {
			if(producto.getCodigo().equals("")){
				throw new Exception("Debe ingresar el codigo del producto");				
			}
			if(producto.getNombre().equals("")){
				throw new Exception("Debe ingresar el nombre del producto");				
			}

			for (Producto p : ProductoDAO.Instancia().ListarProductos_All())
				if (p.getCodigo().equals(producto.getCodigo()))
					throw new Exception("Este producto ya existe: CODIGO Repetido");
			return ProductoDAO.Instancia().insertarProducto(producto);
		} catch (Exception e) {
			throw e;
		}
	}
	
	public boolean modificarProducto(Producto producto) throws Exception {
		try {
			if(producto.getCodigo().equals("")){
				throw new Exception("Debe ingresar el codigo del producto");				
			}
			if(producto.getNombre().equals("")){
				throw new Exception("Debe ingresar el nombre del producto");				
			}
			return ProductoDAO.Instancia().modificarProducto(producto);
		} catch (Exception e) {
			throw e;
		}
	}
	
	public boolean eliminarProducto(int idProducto) throws Exception {
		try {
			return ProductoDAO.Instancia().eliminarProducto(idProducto);
		} catch (Exception e) {
			throw e;
		}
	}
	
	public Producto devolverProducto(int idProducto) throws Exception {
		try {
			return ProductoDAO.Instancia().devolverProducto(idProducto);
		} catch (Exception e) {
			throw e;
		}
	}
	
}
