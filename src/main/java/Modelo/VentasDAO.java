package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import Controlador.Conexion;



public class VentasDAO{
	
	Conexion cn = new Conexion();
	Connection conec = cn.conectar();
	PreparedStatement ps = null;
	ResultSet res = null;
	
	//BUSCAR VENTAS
	
	public VentasDTO BuscarVentas(int codigo_ventas) {
		VentasDTO venta=null;
		try {
			String sql="SELECT * FROM ventas if codigo_ventas=?";
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
			String sql="SELECT * FROM detalle_ventas if codigo_detalle_ventas=?";
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
	
	public boolean AgregarVentas(VentasDTO ventas) {
		boolean resul = false;
		VentasDTO ventaEx = null;
		try {
			ventaEx = BuscarVentas(ventas.getCodigo_venta());
			if(ventaEx == null) {
				String sql ="insert into ventas values(?,?,?,?,?)";
				ps = conec.prepareStatement(sql);
				ps.setInt(2, ventas.getCedula_cliente());
				ps.setInt(3, ventas.getCedula_usuario());
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
	public boolean AgregarDetallesVentas(VentasDetalleDTO ventasDetalle) {
		boolean resul = false;
		VentasDetalleDTO ventaDetalleEx = null;
		try {
			ventaDetalleEx = BuscarDetalleVentas(ventasDetalle.getCodigo_detalle_venta());
			if(ventaDetalleEx == null) {
				String sql ="insert into detalle_ventas values(?,?,?,?,?,?)";
				ps = conec.prepareStatement(sql);
				ps.setInt(2, ventasDetalle.getCantidad_producto());
				ps.setInt(3, ventasDetalle.getCodigo_producto());
				ps.setInt(4, ventasDetalle.getCodigo_venta());
				ps.setDouble(5, ventasDetalle.getValor_total());
				ps.setDouble(6, ventasDetalle.getValor_venta());
				ps.setDouble(7, ventasDetalle.getValoriva());
				resul = ps.executeUpdate() > 0;
			} else {
				JOptionPane.showMessageDialog(null, "La venta ya existe.");
			}
		} catch (SQLException ex) {
			JOptionPane.showMessageDialog(null, "Error al insertar cliente... "+ex);
		}
		return resul;
	}	
	
	//ACTUALIZAR VENTAS
	
	public boolean actualizarVentas(VentasDTO venta) {
		boolean resul = false;
		try {
			String sql ="UPDATE ventas SET  WHERE cedula_cliente=?";
			ps = conec.prepareStatement(sql);
			ps.setInt(2, venta.getCedula_cliente());
			ps.setInt(3, venta.getCedula_usuario());
			ps.setDouble(4, venta.getIvaventa());
			ps.setDouble(5, venta.getTotal_venta());
			ps.setDouble(6, venta.getValor_venta());
			resul = ps.executeUpdate() > 0;
		} catch (SQLException ex) {
			JOptionPane.showMessageDialog(null, "Error al actualizar la venta... "+ex);
		}
		return resul;
	}
	
	//ACTUALIZAR VENTAS DETALLES
	
	public boolean actualizarDetalleVentas(VentasDetalleDTO ventaDetalle) {
		boolean resul = false;
		try {
			String sql ="UPDATE detalle_ventas SET  WHERE cedula_cliente=?";
			ps = conec.prepareStatement(sql);
			ps.setInt(2, ventaDetalle.getCantidad_producto());
			ps.setInt(3, ventaDetalle.getCodigo_producto());
			ps.setInt(4, ventaDetalle.getCodigo_venta());
			ps.setDouble(5, ventaDetalle.getValor_total());
			ps.setDouble(6, ventaDetalle.getValor_venta());
			ps.setDouble(7, ventaDetalle.getValoriva());
			resul = ps.executeUpdate() > 0;
		} catch (SQLException ex) {
			JOptionPane.showMessageDialog(null, "Error al actualizar la venta... "+ex);
		}
		return resul;
	}
	
	//ELIMINAR VENTAS
	
	public boolean eliminarVentas(int codigo_venta) {
		boolean resul = false;
		try {
			String sql ="DELETE FROM ventas WHERE cedula_cliente=?";
			ps = conec.prepareStatement(sql);
			ps.setInt(1, codigo_venta);
			resul = ps.executeUpdate() > 0;
		} catch (SQLException ex) {
			JOptionPane.showMessageDialog(null, "Error al eliminar la venta... "+ex);
		}
		return resul;
	}
	
	//ELIMINAR VENTAS DETALLES
	
	public boolean eliminarDetalleVentas(int codigo_detalle_venta) {
		boolean resul = false;
		try {
			String sql ="DELETE FROM detalle_ventas WHERE cedula_cliente=?";
			ps = conec.prepareStatement(sql);
			ps.setInt(1, codigo_detalle_venta);
			resul = ps.executeUpdate() > 0;
		} catch (SQLException ex) {
			JOptionPane.showMessageDialog(null, "Error al eliminar la venta... "+ex);
		}
		return resul;
	}
	
	
}