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
	
	
	
}
