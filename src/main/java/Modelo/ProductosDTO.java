package Modelo;

public class ProductosDTO{
	
	
	int Codigo_productos,ivacompra,nitproveedor,precio_compra,precio_venta;
	String Nombre_producto;
	
	
	
	
	public ProductosDTO(int codigo_productos, int ivacompra, int nitproveedor, int precio_compra, int precio_venta,
			String nombre_producto) {
		super();
		Codigo_productos = codigo_productos;
		this.ivacompra = ivacompra;
		this.nitproveedor = nitproveedor;
		this.precio_compra = precio_compra;
		this.precio_venta = precio_venta;
		Nombre_producto = nombre_producto;
	}
	
	public ProductosDTO() {
	}
	
	public int getCodigo_productos() {
		return Codigo_productos;
	}
	public void setCodigo_productos(int codigo_productos) {
		Codigo_productos = codigo_productos;
	}
	public int getIvacompra() {
		return ivacompra;
	}
	public void setIvacompra(int ivacompra) {
		this.ivacompra = ivacompra;
	}
	public int getNitproveedor() {
		return nitproveedor;
	}
	public void setNitproveedor(int nitproveedor) {
		this.nitproveedor = nitproveedor;
	}
	public int getPrecio_compra() {
		return precio_compra;
	}
	public void setPrecio_compra(int precio_compra) {
		this.precio_compra = precio_compra;
	}
	public int getPrecio_venta() {
		return precio_venta;
	}
	public void setPrecio_venta(int precio_venta) {
		this.precio_venta = precio_venta;
	}
	public String getNombre_producto() {
		return Nombre_producto;
	}
	public void setNombre_producto(String nombre_producto) {
		Nombre_producto = nombre_producto;
	}
	

	
	
	
}
