package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

import java.util.ArrayList;
import java.util.List;

import Controlador.Conexion;
import Modelo.ClienteDTO;



public class VentasDAO{
	
	Conexion cn = new Conexion();
	Connection conec = cn.conectar();
	PreparedStatement ps = null;
	ResultSet res = null;
	
	//BUSCAR VENTAS
	
	public VentasDTO BuscarVentas(int codigo_ventas) {
		VentasDTO venta=null;
		try {
			String sql="SELECT * FROM ventas WHERE codigo_venta=?";
			ps=conec.prepareStatement(sql);
			ps.setInt(1, codigo_ventas);
			res=ps.executeQuery();
			while(res.next()) {
				venta=new VentasDTO(res.getInt(1),res.getInt(2),res.getInt(3),res.getDouble(4),res.getDouble(5),res.getDouble(6));
			}
		}
		catch(SQLException e) {
			JOptionPane.showMessageDialog(null, "Error al consultar "+e);
		}
		return venta;
	}
	
	
	//BUSCAR DETALLES VENTAS
	
	public VentasDetalleDTO BuscarDetalleVentas(int codigo_detalle_ventas) {
		VentasDetalleDTO DetalleVenta=null;
		try {
			String sql="SELECT * FROM detalle_ventas WHERE codigo_detalle_venta=?";
			ps=conec.prepareStatement(sql);
			ps.setInt(1, codigo_detalle_ventas);
			res=ps.executeQuery();
			while(res.next()) {
				DetalleVenta=new VentasDetalleDTO(res.getInt(1),res.getInt(2),res.getInt(3),res.getInt(4),res.getDouble(5),res.getDouble(6),res.getDouble(7));
			}
		}
		catch(SQLException e) {
			JOptionPane.showMessageDialog(null, "Error al consultar "+e);
		}
		return DetalleVenta;
	}
	
	//AGREGAR VENTA
	
	public boolean AgregarVentas(VentasDTO ventas,ClienteDTO cliente,UsuarioDTO usuario) {
		boolean resul = false;
		VentasDTO ventaEx = null;
		try {
			ventaEx = BuscarVentas(ventas.getCodigo_venta());
			if(ventaEx == null) {
				String sql ="insert into ventas values(?,?,?,?,?,?)";
				ps = conec.prepareStatement(sql);
				ps.setInt(1, ventas.getCodigo_venta());
				ps.setInt(2, cliente.getCedula_cliente());
				ps.setInt(3, usuario.getCedula_usuario());
				ps.setDouble(4, ventas.getIvaventa());
				ps.setDouble(5, ventas.getTotal_venta());
				ps.setDouble(6, ventas.getValor_venta());
				resul = ps.executeUpdate() > 0;
			} else {
				JOptionPane.showMessageDialog(null, "La venta ya existe.");
			}
		} catch (SQLException ex) {
			JOptionPane.showMessageDialog(null, "Error al insertar la venta... "+ex);
		}
		return resul;
	}
	
	//AGREGAR DETALLES VENTA
	public boolean AgregarDetallesVentas(VentasDetalleDTO ventasDetalle, VentasDTO ventas, ProductosDTO productos) {
		boolean resul = false;
		VentasDetalleDTO ventaDetalleEx = null;
		try {
			ventaDetalleEx = BuscarDetalleVentas(ventasDetalle.getCodigo_detalle_venta());
			if(ventaDetalleEx == null) {
				String sql ="insert into detalle_ventas values(?,?,?,?,?,?,?)";
				ps = conec.prepareStatement(sql);
				ps.setInt(1, ventasDetalle.getCantidad_producto());
				ps.setInt(2, productos.getCodigo_productos());
				ps.setInt(3, ventas.getCodigo_venta());
				ps.setDouble(4, ventas.getValor_venta());
				ps.setDouble(5, ventas.getTotal_venta());
				ps.setDouble(6, ventas.getIvaventa());
				ps.setDouble(7, ventasDetalle.getCodigo_detalle_venta());
				resul = ps.executeUpdate() > 0;
			} else {
				JOptionPane.showMessageDialog(null, "La venta ya existe.");
			}
		} catch (SQLException ex) {
			JOptionPane.showMessageDialog(null, "Error al insertar la info0... "+ex);
		}
		return resul;
	}
}