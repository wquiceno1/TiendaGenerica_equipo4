package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

import Controlador.Conexion;

public class ClienteDAO {
	
	Conexion cn = new Conexion();
	Connection conec = cn.conectar();
	PreparedStatement ps = null;
	ResultSet res = null;
	
	public boolean insertar_cliente(ClienteDTO cliente) {
		boolean resul = false;
		ClienteDTO clienteEx = null;
		try {
			clienteEx = buscar_cliente(cliente.getCedula_cliente());
			if(clienteEx == null) {
				String sql ="insert into clientes values(?,?,?,?,?)";
				ps = conec.prepareStatement(sql);
				ps.setInt(1, cliente.getCedula_cliente());
				ps.setString(2, cliente.getDireccion_cliente());
				ps.setString(3, cliente.getEmail_cliente());
				ps.setString(4, cliente.getNombre_cliente());
				ps.setString(5, cliente.getTelefono_cliente());
				resul = ps.executeUpdate() > 0;
			} else {
				JOptionPane.showMessageDialog(null, "El cliente ya existe.");
			}
		} catch (SQLException ex) {
			JOptionPane.showMessageDialog(null, "Error al insertar cliente... "+ex);
		}
		return resul;
	}
	
	public ClienteDTO buscar_cliente(int cedula) {
		ClienteDTO cliente = null;
		try {
			String sql = "SELECT * FROM clientes WHERE cedula_cliente = ?";
			ps = conec.prepareStatement(sql);
			ps.setInt(1, cedula);
			res = ps.executeQuery();
			while(res.next()){
				cliente = new ClienteDTO(res.getInt(1), res.getString(2), res.getString(3), res.getString(4), res.getString(5));
			}
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, "Error al consultar "+e);
		}
		return cliente;
	}
	
	public boolean actualizar_cliente(ClienteDTO cliente) {
		boolean resul = false;
		try {
			String sql ="UPDATE clientes SET direccion_cliente=?, email_cliente=?, nombre_cliente=?, telefono_cliente=? WHERE cedula_cliente=?";
			ps = conec.prepareStatement(sql);			
			ps.setString(1, cliente.getDireccion_cliente());
			ps.setString(2, cliente.getEmail_cliente());
			ps.setString(3, cliente.getNombre_cliente());
			ps.setString(4, cliente.getTelefono_cliente());
			ps.setInt(5, cliente.getCedula_cliente());
			resul = ps.executeUpdate() > 0;
		} catch (SQLException ex) {
			JOptionPane.showMessageDialog(null, "Error al actualizar cliente... "+ex);
		}
		return resul;
	}
	
	public boolean eliminar_cliente(int ced) {
		boolean resul = false;
		try {
			String sql ="DELETE FROM clientes WHERE cedula_cliente=?";
			ps = conec.prepareStatement(sql);
			ps.setInt(1, ced);
			resul = ps.executeUpdate() > 0;
		} catch (SQLException ex) {
			JOptionPane.showMessageDialog(null, "Error al eliminar el cliente... "+ex);
		}
		return resul;
	}

}
