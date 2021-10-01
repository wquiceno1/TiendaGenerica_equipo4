package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

import Controlador.Conexion;

public class ProveedorDAO {
	
	Conexion cn = new Conexion();
	Connection conec = cn.conectar();
	PreparedStatement ps = null;
	ResultSet res = null;
	
	public boolean insertar_proveedor(ProveedorDTO proveedor) {
		
		boolean resultado = false;
		ProveedorDTO proveedorEx = null;
		
		try {
			
			proveedorEx = buscar_proveedor(proveedor.getNitproveedor());
			
			if(proveedorEx == null) {
				
				String sql ="INSERT INTO proveedores VALUES(?,?,?,?,?)";
				ps = conec.prepareStatement(sql);
				ps.setInt(1, proveedor.getNitproveedor());
				ps.setString(2, proveedor.getCiudad_provedor());
				ps.setString(3, proveedor.getDireccion_proveedor());
				ps.setString(4, proveedor.getNombre_proveedor());
				ps.setString(5, proveedor.getTelefono_proveedor());
				resultado = ps.executeUpdate() > 0;
				
			} else {
				JOptionPane.showMessageDialog(null, "El proveedor ya existe.");
			}
			
		} catch (SQLException ex) {
			JOptionPane.showMessageDialog(null, "Error al insertar proveedor... "+ex);
		}
		
		return resultado;
	}
	
	public ProveedorDTO buscar_proveedor(int nit) {
		
		ProveedorDTO proveedor = null;
		
		try {
			
			String sql = "SELECT * FROM proveedores WHERE nitproveedor = ?";
			ps = conec.prepareStatement(sql);
			ps.setInt(1, nit);
			res = ps.executeQuery();
			
			while(res.next()){
				proveedor = new ProveedorDTO(res.getInt(1), res.getString(2), res.getString(3), res.getString(4), res.getString(5));
			}
			
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, "Error al consultar "+e);
		}
		
		return proveedor;
	}
	
	public boolean actualizar_proveedor(ProveedorDTO nit) {
		
		boolean resultado = false;
		
		try {
			
			String sql ="UPDATE proveedores SET ciudad_provedor=?, direccion_proveedor=?, nombre_proveedor=?, telefono_proveedor=? WHERE nitproveedor=?";
			ps = conec.prepareStatement(sql);			
			ps.setString(1, nit.getCiudad_provedor());
			ps.setString(2, nit.getDireccion_proveedor());
			ps.setString(3, nit.getNombre_proveedor());
			ps.setString(4, nit.getTelefono_proveedor());
			ps.setInt(5, nit.getNitproveedor());
			resultado = ps.executeUpdate() > 0;
			
		} catch (SQLException ex) {
			JOptionPane.showMessageDialog(null, "Error al actualizar proveedor... "+ex);
		}
		
		return resultado;
	}
	
	public boolean eliminar_proveedor(int nit_e) {
		
		boolean resultado = false;
		
		try {
			
			String sql ="DELETE FROM proveedores WHERE nitproveedor = ?";
			ps = conec.prepareStatement(sql);
			ps.setInt(1, nit_e);
			resultado = ps.executeUpdate() > 0;
			
		} catch (SQLException ex) {
			JOptionPane.showMessageDialog(null, "Error al eliminar el proveedor... "+ex);
		}
		
		return resultado;
	}
	
	

}
