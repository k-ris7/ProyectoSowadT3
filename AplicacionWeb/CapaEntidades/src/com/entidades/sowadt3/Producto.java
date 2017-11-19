package com.entidades.sowadt3;


import java.sql.Date;

public class Producto {
	private int Uid;
	private Categoria categoria;
	private Marca marca;
	private String codigo;
	private double precioVenta;
	private double precioCosto;
	private int Stock;
	private Date FechaIngreso;
	private boolean activo;
	private String nombre;
	private String imagen;
	public int getUid() {
		return Uid;
	}
	public String getImagen() {
		return imagen;
	}
	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
	public void setUid(int uid) {
		Uid = uid;
	}
	public Categoria getCategoria() {
		return categoria;
	}
	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}
	public Marca getMarca() {
		return marca;
	}
	public void setMarca(Marca marca) {
		this.marca = marca;
	}
	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	public double getPrecioVenta() {
		return precioVenta;
	}
	public void setPrecioVenta(double precioVenta) {
		this.precioVenta = precioVenta;
	}
	public double getPrecioCosto() {
		return precioCosto;
	}
	public void setPrecioCosto(double precioCosto) {
		this.precioCosto = precioCosto;
	}
	public int getStock() {
		return Stock;
	}
	public void setStock(int stock) {
		Stock = stock;
	}
	public Date getFechaIngreso() {
		return FechaIngreso;
	}
	public void setFechaIngreso(Date fechaIngreso) {
		FechaIngreso = fechaIngreso;
	}
	public boolean isActivo() {
		return activo;
	}
	public void setActivo(boolean activo) {
		this.activo = activo;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
}
