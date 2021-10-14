package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

import Controlador.Conexion;

public class ProductosDAO {
	
	Conexion cn = new Conexion();
	Connection conec = cn.conectar();
	PreparedStatement ps = null;
	ResultSet res = null;
	
	public boolean Cargar_Productos(String Ruta) {
		boolean resul = false;
		try {
			String sql ="load data infile '"+Ruta+"' replace into table productos fields terminated by ',' lines terminated by '\r\n'";
			ps = conec.prepareStatement(sql);
			resul = ps.executeUpdate()>0;
		} catch (SQLException ex) {
			JOptionPane.showMessageDialog(null, "Error: datos leídos inválidos "+ex);
		}
		return resul;
	}
	
	
	public ProductosDTO consultarProducto(String codigo) {
		ProductosDTO pdDTO = null;
		try {
			String consultar = "SELECT codigo_producto, nombre_producto, precio_venta FROM productos WHERE codigo_producto=?";
			ps = conec.prepareStatement(consultar);
			ps.setString(1, codigo);
			res = ps.executeQuery();
			while(res.next()) {
				pdDTO = new ProductosDTO(res.getString(1), res.getString(2), res.getInt(3));
			}
		} catch (SQLException sqle) {
			JOptionPane.showMessageDialog(null, "Error al consultar el producto en DAO. ");
		}
		return pdDTO;
	}
	
	public ProductosDTO consultarProductoV(String codigo) {
		ProductosDTO pdDTO = null;
		try {
			String consultar = "SELECT codigo_producto, nombre_producto, precio_venta, ivacompra FROM productos WHERE codigo_producto=?";
			ps = conec.prepareStatement(consultar);
			ps.setString(1, codigo);
			res = ps.executeQuery();
			while(res.next()) {
				pdDTO = new ProductosDTO(res.getString(1), res.getString(2), res.getInt(3), res.getInt(4));
			}
		} catch (SQLException sqle) {
			JOptionPane.showMessageDialog(null, "Error al consultar el producto en DAO. ");
		}
		return pdDTO;
	}

}
