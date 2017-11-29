package com.datos.sowadt3;


import java.sql.CallableStatement;
import java.sql.Connection;

import com.entidades.sowadt3.Categoria;
import com.entidades.sowadt3.Venta;

public class VentaDAO {
	
	public static VentaDAO _Instancia;
	private VentaDAO(){};
	public static VentaDAO Instancia(){
		if(_Instancia==null){
			_Instancia = new VentaDAO();
		}
		return _Instancia;
	}
	
	public boolean insertarVenta(Venta venta) throws Exception {
		Connection cn = Conexion.Instancia().conectar();
		try {
			CallableStatement callableStatement = cn.prepareCall("{call sp_InsertVenta(?,?,?,?,?)}");
			callableStatement.setInt(1, venta.getCliente().getUid());
			callableStatement.setString(2, venta.getNumeroSerie());
			callableStatement.setDouble(3, venta.getIgv());
			callableStatement.setDouble(4, venta.getTotal());
			callableStatement.setString(5, venta.getTransaccionPaypal());
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
