package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.swing.JOptionPane;

public class Conexion {
	
	private String bd = "bd_tienda";
	private String url = "jdbc:mysql://localhost:3306/"+bd;
	private String usuario = "root";
	private String pass = "";
	
	Connection conec = null;
	
	public Connection conectar() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conec = DriverManager.getConnection(url,usuario,pass);
			//JOptionPane.showMessageDialog(null, "Conexion OK....");
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "Error Conexion...."+e);
		}
		return conec;
	}

}
