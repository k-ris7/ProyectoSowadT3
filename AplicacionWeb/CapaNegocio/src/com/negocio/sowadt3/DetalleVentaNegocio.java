package com.negocio.sowadt3;

import com.datos.sowadt3.DetalleVentaDAO;
import com.datos.sowadt3.VentaDAO;
import com.entidades.sowadt3.DetalleVenta;
import com.entidades.sowadt3.Venta;

public class DetalleVentaNegocio {

	public static DetalleVentaNegocio _Instancia;
	private DetalleVentaNegocio(){};
	public static DetalleVentaNegocio Instancia(){
		if(_Instancia==null){
			_Instancia = new DetalleVentaNegocio();
		}
		return _Instancia;
	}
	
	public boolean insertarDetalleVenta(DetalleVenta detalle) throws Exception {
		try {
			
			return DetalleVentaDAO.Instancia().insertarDetalleVenta(detalle);
		} catch (Exception e) {
			throw e;
		}
	}
}
