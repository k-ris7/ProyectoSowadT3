package com.datos.sowadt3;
import java.sql.Connection;
import java.sql.DriverManager;
public class Conexion {

	//Singleton
	public static Conexion _Instancia;
	private Conexion(){};
	public static Conexion Instancia(){
		if(_Instancia==null){
			_Instancia = new Conexion();
		}
		return _Instancia;
	}
		//endSingleton
	
	public Connection conectar() throws Exception{
		Connection connection = null;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			
			connection = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;"+
					"databaseName=BD_SowadT3", "sa", "123");
			
			
		} catch (Exception e) {
			throw e;
		}
		return connection;
	}

}
