package com.entidades.sowadt3;


import java.sql.Date;

public class Venta {
	private int Uid;
	private Empleado empleado;
	private Cliente cliente;
	private Date fechaVenta;
	private String numeroSerie;
	private double igv;
	private double total;
	private String transaccionPaypal;
	public int getUid() {
		return Uid;
	}
	public void setUid(int uid) {
		Uid = uid;
	}
	public Empleado getEmpleado() {
		return empleado;
	}
	public void setEmpleado(Empleado empleado) {
		this.empleado = empleado;
	}
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	public Date getFechaVenta() {
		return fechaVenta;
	}
	public void setFechaVenta(Date fechaVenta) {
		this.fechaVenta = fechaVenta;
	}
	public String getNumeroSerie() {
		return numeroSerie;
	}
	public void setNumeroSerie(String numeroSerie) {
		this.numeroSerie = numeroSerie;
	}
	public double getIgv() {
		return igv;
	}
	public void setIgv(double igv) {
		this.igv = igv;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public String getTransaccionPaypal() {
		return transaccionPaypal;
	}
	public void setTransaccionPaypal(String transaccionPaypal) {
		this.transaccionPaypal = transaccionPaypal;
	}
	
	
}
