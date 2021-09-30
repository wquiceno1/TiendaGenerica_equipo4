package Controlador;

import java.io.IOException;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import Modelo.ProveedorDAO;
import Modelo.ProveedorDTO;

/**
 * Servlet implementation class Proveedores, con todaaaaa
 */
@WebServlet("/Proveedores")
public class Proveedores extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Proveedores() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Instanciar el dao que tiene los metodos aplicables a los proveedores
		ProveedorDAO proveDao = new ProveedorDAO();

		// crear un despacher para redireccionar
		RequestDispatcher rd = request.getRequestDispatcher("Proveedores.jsp");

		// validar si se presiono boton crear

		if (request.getParameter("insertar") != null) {
			int nitproveedor;
			String ciudad_provedor, direccion_proveedor, nombre_proveedor, telefono_proveedor;

			// cargar la info del formulario a las variables
			nitproveedor = Integer.parseInt(request.getParameter("nitproveedor"));
			ciudad_provedor = request.getParameter("ciudad_provedor");
			direccion_proveedor = request.getParameter("direccion_proveedor");
			nombre_proveedor = request.getParameter("nombre_proveedor");
			telefono_proveedor = request.getParameter("telefono_proveedor");

			// cargar las variables al nuevo objeto
			ProveedorDTO proveedor = new ProveedorDTO(nitproveedor, ciudad_provedor, direccion_proveedor, nombre_proveedor, telefono_proveedor);

			// insertar el nuevo proveedor
			if (proveDao.insertar_proveedor(proveedor)) {
				// JOptionPane.showMessageDialog(null, "Proveedor registrado con exito.");
				// response.sendRedirect("Proveedores.jsp?men=Proveedor registrado con exito.");
				request.setAttribute("mensaje", "Proveedor registrado exitosamente.");
				
			} else {
				// JOptionPane.showMessageDialog(null, "Fallo en el registro.");
				// response.sendRedirect("Proveedores.jsp?men=Fallo en el registro.");
				request.setAttribute("mensaje", "Fallo en el registro");
			}

			rd.forward(request, response);
			request.removeAttribute("nitproveedor");
			request.removeAttribute("ciudad_provedor");
			request.removeAttribute("direccion_proveedor");
			request.removeAttribute("nombre_proveedor");
			request.removeAttribute("telefono_proveedor");
		}

		// validar si se presiono boton consultar
		if (request.getParameter("consultar") != null) {
			
			int nitproveedor = Integer.parseInt(request.getParameter("act_nitproveedor"));
			ProveedorDTO proveedor = proveDao.buscar_proveedor(nitproveedor);
			
			if (proveedor != null) {
				request.setAttribute("nitproveedor", proveedor.getNitproveedor());
				request.setAttribute("ciudad_provedor", proveedor.getCiudad_provedor());
				request.setAttribute("direccion_proveedor", proveedor.getDireccion_proveedor());
				request.setAttribute("nombre_proveedor", proveedor.getNombre_proveedor());
				request.setAttribute("telefono_proveedor", proveedor.getTelefono_proveedor());
				rd.forward(request, response);
				
			} else {
				JOptionPane.showMessageDialog(null, "El proveedor no existe");
				request.setAttribute("mensaje", "El proveedor no existe.");
				response.sendRedirect("Proveedores.jsp");
			}

		}

		// validar si se presiono boton actualizar

		if (request.getParameter("actualizar") != null) {
			
			int nitproveedor;
			String ciudad_provedor, direccion_proveedor, nombre_proveedor, telefono_proveedor, estado = "";

			// cargar la info del formulario a las variables
			nitproveedor = Integer.parseInt(request.getParameter("nit_e"));
			ciudad_provedor = request.getParameter("ciudad_provedor");
			direccion_proveedor = request.getParameter("direccion_proveedor");
			nombre_proveedor = request.getParameter("nombre_proveedor");
			telefono_proveedor = request.getParameter("telefono_proveedor");

			// cargar las variables al nuevo objeto
			ProveedorDTO proveedor = new ProveedorDTO(nitproveedor, ciudad_provedor, direccion_proveedor, nombre_proveedor, telefono_proveedor);

			// actualizar el Proveedor
			if (proveDao.actualizar_proveedor(proveedor)) {

				request.setAttribute("mensaje", "Proveedor actualizado exitosamente.");
				request.setAttribute(estado, "disabled");
				
			} else {

				request.setAttribute("mensaje", "Fallo al actualizar");
			}
			

			rd.forward(request, response);

		}
		
		// validar si se presiono boton borrrar
		if(request.getParameter("borrar") != null) {
			int nitproveedor;
			
			
			// cargar la info del formulario a las variables
			nitproveedor = Integer.parseInt(request.getParameter("nit_e"));
			
								
			//eliminar el Proveedor
			int opcion = JOptionPane.showConfirmDialog(null, "Desea eliminar el proveedor: " + nitproveedor);
			
			if(opcion == 0) {
				
				if(proveDao.eliminar_proveedor(nitproveedor)) {				
					request.setAttribute("mensaje", "Proveedor eliminado exitosamente.");
					
				} else {				
					request.setAttribute("mensaje", "Fallo al eliminar");
				}
				
				request.removeAttribute("nitproveedor");
				request.removeAttribute("ciudad_provedor");
				request.removeAttribute("direccion_proveedor");
				request.removeAttribute("nombre_proveedor");
				request.removeAttribute("telefono_proveedor");
			}
			rd.forward(request, response);
			
	
		}

	}

}
