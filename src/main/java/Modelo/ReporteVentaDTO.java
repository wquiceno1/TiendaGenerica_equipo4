package Modelo;

public class ReporteVentaDTO {
	
	private int cedulaCliente;
	private String nombreCliente;
	private int totalCliente;
	
	public ReporteVentaDTO(int cedulaCliente, String nombreCliente, int totalCliente) {
		super();
		this.cedulaCliente = cedulaCliente;
		this.nombreCliente = nombreCliente;
		this.totalCliente = totalCliente;
	}

	public int getCedulaCliente() {
		return cedulaCliente;
	}

	public void setCedulaCliente(int cedulaCliente) {
		this.cedulaCliente = cedulaCliente;
	}

	public String getNombreCliente() {
		return nombreCliente;
	}

	public void setNombreCliente(String nombreCliente) {
		this.nombreCliente = nombreCliente;
	}

	public int getTotalCliente() {
		return totalCliente;
	}

	public void setTotalCliente(int totalCliente) {
		this.totalCliente = totalCliente;
	}
	
}
