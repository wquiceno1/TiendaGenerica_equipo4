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
			JOptionPane.showMessageDialog(null, "Error: datos le�dos inv�lidos");
		}
		return resul;
	}

}
