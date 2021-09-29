package Modelo;

public class ProveedorDTO {
	
	private int nitproveedor;
	private String ciudad_provedor;
	private String direccion_proveedor;
	private String nombre_proveedor;
	private String telefono_proveedor;
	
	// Contructor de Proveedor
	public ProveedorDTO(int nitproveedor, String ciudad_provedor, String direccion_proveedor, String nombre_proveedor, String telefono_proveedor) {
		this.nitproveedor = nitproveedor;
		this.ciudad_provedor = ciudad_provedor;
		this.direccion_proveedor = direccion_proveedor;
		this.nombre_proveedor = nombre_proveedor;
		this.telefono_proveedor = telefono_proveedor;
	}


	public int getNitproveedor() {
		return nitproveedor;
	}

	public void setNitproveedor(int nitproveedor) {
		this.nitproveedor = nitproveedor;
	}


	public String getCiudad_provedor() {
		return ciudad_provedor;
	}

	public void setCiudad_provedor(String ciudad_provedor) {
		this.ciudad_provedor = ciudad_provedor;
	}


	public String getDireccion_proveedor() {
		return direccion_proveedor;
	}

	public void setDireccion_proveedor(String direccion_proveedor) {
		this.direccion_proveedor = direccion_proveedor;
	}


	public String getNombre_proveedor() {
		return nombre_proveedor;
	}

	public void setNombre_proveedor(String nombre_proveedor) {
		this.nombre_proveedor = nombre_proveedor;
	}


	public String getTelefono_proveedor() {
		return telefono_proveedor;
	}

	public void setTelefono_proveedor(String telefono_proveedor) {
		this.telefono_proveedor = telefono_proveedor;
	}
	
}
