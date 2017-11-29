package com.datos.sowadt3;


import java.sql.CallableStatement;
import java.sql.Connection;
import java.util.ArrayList;

import com.entidades.sowadt3.DetalleVenta;
import com.entidades.sowadt3.Venta;

public class DetalleVentaDAO {
	
	public static DetalleVentaDAO _Instancia;
	private DetalleVentaDAO(){};
	public static DetalleVentaDAO Instancia(){
		if(_Instancia==null){
			_Instancia = new DetalleVentaDAO();
		}
		return _Instancia;
	}
	
	public boolean insertarDetalleVenta(DetalleVenta detalle) throws Exception {
		Connection cn = Conexion.Instancia().conectar();
		try {
			CallableStatement callableStatement = cn.prepareCall("{call sp_InsertDetalleVenta(?,?,?,?)}");
			callableStatement.setInt(1, detalle.getVenta().getUid());
			callableStatement.setInt(2, detalle.getProducto().getUid());
			callableStatement.setInt(3, detalle.getCantidad());
			callableStatement.setDouble(4, detalle.getSubtotal());
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

}
