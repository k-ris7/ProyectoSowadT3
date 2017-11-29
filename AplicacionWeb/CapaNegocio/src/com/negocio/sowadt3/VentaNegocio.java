package com.negocio.sowadt3;

import com.datos.sowadt3.ProductoDAO;
import com.datos.sowadt3.VentaDAO;
import com.entidades.sowadt3.Producto;
import com.entidades.sowadt3.Venta;


public class VentaNegocio {

	public static VentaNegocio _Instancia;
	private VentaNegocio(){};
	public static VentaNegocio Instancia(){
		if(_Instancia==null){
			_Instancia = new VentaNegocio();
		}
		return _Instancia;
	}
	
	public boolean insertarVenta(Venta venta) throws Exception {
		try {
			
			if(venta.getNumeroSerie().equals("")){
				throw new Exception("Debe ingresar el numero de serie");				
			}
			
			return VentaDAO.Instancia().insertarVenta(venta);
		} catch (Exception e) {
			throw e;
		}
	}
	
}
