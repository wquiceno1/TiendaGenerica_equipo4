package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

import Controlador.Conexion;

public class UsuarioDAO {
	
	Conexion cn = new Conexion();
	Connection conec = cn.conectar();
	PreparedStatement ps = null;
	ResultSet res = null;
	
	public boolean insertar_usuario(UsuarioDTO usuario) {
		boolean resul = false;
		UsuarioDTO userEx = null;
		try {
			userEx = buscar_usuario(usuario.getCedula_usuario());
			if(userEx == null) {
				String sql ="insert into usuarios values(?,?,?,?,?)";
				ps = conec.prepareStatement(sql);
				ps.setInt(1, usuario.getCedula_usuario());
				ps.setString(2, usuario.getEmail_usuario());
				ps.setString(3, usuario.getNombre_usuario());
				ps.setString(4, usuario.getPassword());
				ps.setString(5, usuario.getUsuario());
				resul = ps.executeUpdate() > 0;
			} else {
				JOptionPane.showMessageDialog(null, "El usuario ya existe.");
			}
		} catch (SQLException ex) {
			JOptionPane.showMessageDialog(null, "Error al insertar usuario... "+ex);
		}
		return resul;
	}
	
	public UsuarioDTO buscar_usuario(int cedula) {
		UsuarioDTO user = null;
		try {
			String sql = "SELECT * FROM usuarios WHERE cedula_usuario = ?";
			ps = conec.prepareStatement(sql);
			ps.setInt(1, cedula);
			res = ps.executeQuery();
			while(res.next()){
				user = new UsuarioDTO(res.getInt(1), res.getString(2), res.getString(3), res.getString(4), res.getString(5));
			}
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, "Error al consultar "+e);
		}
		return user;
	}
	
	public boolean actualizar_usuario(UsuarioDTO usuario) {
		boolean resul = false;
		try {
			String sql ="UPDATE usuarios SET email_usuario=?, nombre_usuario=?, password=?, usuario=? WHERE cedula_usuario=?";
			ps = conec.prepareStatement(sql);			
			ps.setString(1, usuario.getEmail_usuario());
			ps.setString(2, usuario.getNombre_usuario());
			ps.setString(3, usuario.getPassword());
			ps.setString(4, usuario.getUsuario());
			ps.setInt(5, usuario.getCedula_usuario());
			resul = ps.executeUpdate() > 0;
		} catch (SQLException ex) {
			JOptionPane.showMessageDialog(null, "Error al actualizar usuario... "+ex);
		}
		return resul;
	}
	
	public boolean eliminar_usuario(int ced) {
		boolean resul = false;
		try {
			String sql ="DELETE FROM usuarios WHERE cedula_usuario=?";
			ps = conec.prepareStatement(sql);
			ps.setInt(1, ced);
			resul = ps.executeUpdate() > 0;
		} catch (SQLException ex) {
			JOptionPane.showMessageDialog(null, "Error al eliminar el usuario... "+ex);
		}
		return resul;
	}
	// metodo de login
	public boolean login_usuarios(String usuario, String clave) {
		boolean resul = false;
		try {
			String sql = "SELECT * FROM usuarios WHERE usuario=? AND password=?";
			ps = conec.prepareStatement(sql);
			ps.setString(1, usuario);
			ps.setString(2, clave);
			res = ps.executeQuery();			
			while(res.next()) {
				resul = true;
			}
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "Error en la consulta... "+e);
		}
		
		return resul;
	}
	
	

}
