package Controlador;

import java.io.IOException;

import javax.swing.JOptionPane;

//import javax.security.auth.message.callback.PrivateKeyCallback.Request;
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.swing.JOptionPane;

import Modelo.VentasDAO;
import Modelo.VentasDTO;
import Modelo.VentasDetalleDTO;
import Modelo.ClienteDAO;
import Modelo.ClienteDTO;
import Modelo.ProductosDAO;
import Modelo.ProductosDTO;
import Modelo.UsuarioDAO;
import Modelo.UsuarioDTO;


//**
// * Servlet implementation class Ventas
// */
//@WebServlet("/Ventas")
public class Ventas /*extends HttpServlet*/ {
//	private static final long serialVersionUID = 1L;

//	/**
//	 * @see HttpServlet#HttpServlet()
//	 */
	public Ventas() {
		
	}
	
	VentasDAO ventasDAO=new VentasDAO();
	ClienteDAO clienteDAO=new ClienteDAO();
	ProductosDAO productosDAO=new ProductosDAO();
	UsuarioDAO usuarioDAO=new UsuarioDAO();

	public String Consultar_cliente(int Cedula) {
		String Nombre=null;
		try {
			ClienteDTO clienteDat=clienteDAO.buscar_cliente(Cedula);
		
			if (clienteDat!=null) {
				Nombre=clienteDat.getNombre_cliente();
			}else {
				Nombre="El cliente no existe";
			}
		}catch(Exception e) {
			JOptionPane.showMessageDialog(null, "Error al buscar cliente... "+e);
		}
		return Nombre;
	}
	
	public String Consultar_producto(int cod_producto) {
		String NombrePro=null;
		try {
			ProductosDTO productosDat=productosDAO.Buscar_producto(cod_producto);
			if (productosDat!=null) {
				NombrePro=productosDat.getNombre_producto();
			}else {
				NombrePro="El producto no existe";
			}
		}catch(Exception e) {
			JOptionPane.showMessageDialog(null, "Error al buscar cliente... "+e);
		}
		return NombrePro;
	}
	
	public double[] Guardar_Datos(int Cod_producto,int Ced_cliente,int Can_producto,int i) {
		double Res[]= {0,0};
		try {
			ProductosDTO productosDat=productosDAO.Buscar_producto(Cod_producto);
			ClienteDTO clienteDat=clienteDAO.buscar_cliente(Ced_cliente);
			UsuarioDTO usuarioDat =usuarioDAO.buscar_usuario(123);
			VentasDTO ventasDat=ventasDAO.BuscarVentas(ventasDAO.UltimoVentas());
			int CodigoVentas=ventasDAO.UltimoVentas()+1;
			int CodigoDetalle=ventasDAO.UltimoDetalleVentas()+1;
			
			double totalSinIVA=0;
			totalSinIVA=totalSinIVA+(productosDat.getPrecio_venta()*Can_producto);
			double resultado=0;
			resultado=resultado+(totalSinIVA*(productosDat.getIvacompra()/100))+totalSinIVA;
			
			Res[0]=totalSinIVA;
			Res[1]=resultado;
			
			if(i==3) {
				VentasDTO ventasDTO = new VentasDTO(CodigoVentas-2,clienteDat.getCedula_cliente(),usuarioDat.getCedula_usuario(),productosDat.getIvacompra(),Res[0],Res[1]);
				
				ventasDAO.AgregarVentas(ventasDTO);
			}else {
			
			VentasDetalleDTO ventasDetalleDTO=new VentasDetalleDTO(CodigoDetalle,Can_producto,productosDat.getCodigo_productos(),ventasDat.getCodigo_venta(),Res[1],Res[0],productosDat.getIvacompra());

			ventasDAO.AgregarDetallesVentas(ventasDetalleDTO);
			}
			if(i==3) {
				totalSinIVA=0;
				resultado=0;
			}
		}catch(Exception e) {
			JOptionPane.showMessageDialog(null, "Error al ingresar la info2134562:... "+e);
		}
			
		return Res;
	}
	
	

}


