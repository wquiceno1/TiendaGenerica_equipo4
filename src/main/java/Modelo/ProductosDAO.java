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
			JOptionPane.showMessageDialog(null, "Error: datos leídos inválidos");
		}
		return resul;
	}
	
	
	public ProductosDTO Buscar_producto(int Cod_producto) {
		
		ProductosDTO productos=null;
		try {
			String sql="SELECT * FROM productos WHERE codigo_producto=?";
			ps=conec.prepareStatement(sql);
			ps.setInt(1, Cod_producto);
			res=ps.executeQuery();
			while(res.next()) {
				productos=new ProductosDTO(res.getInt(1),res.getInt(2),res.getInt(3),res.getInt(5),res.getInt(6),res.getString(4));
			}
		}
		catch(SQLException e) {
			JOptionPane.showMessageDialog(null, "Error al consultar "+e);
		}
		return productos;
		
	}

}
