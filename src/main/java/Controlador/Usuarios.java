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

import Modelo.UsuarioDAO;
import Modelo.UsuarioDTO;

/**
 * Servlet implementation class Usuarios
 */
@WebServlet("/Usuarios")
public class Usuarios extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Usuarios() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Instanciar el dao que tiene los metodos aplicables a los usuarios
		UsuarioDAO userDao = new UsuarioDAO();

		// crear un despacher para redireccionar
		RequestDispatcher rd = request.getRequestDispatcher("Usuarios.jsp");

		// validar si se presiono boton crear

		if (request.getParameter("insertar") != null) {
			int cedula;
			String nombre, correo, usuario, clave;

			// cargar la info del formulario a las variables
			cedula = Integer.parseInt(request.getParameter("cedula"));
			nombre = request.getParameter("nombre");
			correo = request.getParameter("correo");
			usuario = request.getParameter("usuario");
			clave = request.getParameter("clave");

			// cargar las variables al nuevo objeto
			UsuarioDTO user = new UsuarioDTO(cedula, correo, nombre, usuario, clave);

			// insertar el nuevo usuario
			if (userDao.insertar_usuario(user)) {
				// JOptionPane.showMessageDialog(null, "Usuario registrado con exito.");
				// response.sendRedirect("Usuarios.jsp?men=Usuario registrado con exito.");
				request.setAttribute("mensaje", "Usuario registrado exitosamente.");
			} else {
				// JOptionPane.showMessageDialog(null, "Fallo en el registro.");
				// response.sendRedirect("Usuarios.jsp?men=Fallo en el registro.");
				request.setAttribute("mensaje", "Fallo en el registro");
			}

			rd.forward(request, response);
			request.removeAttribute("cedula");
			request.removeAttribute("nombre");
			request.removeAttribute("correo");
			request.removeAttribute("usuario");
			request.removeAttribute("clave");
		}

		// validar si se presiono boton consultar

		if (request.getParameter("consultar") != null) {
			int cedula = Integer.parseInt(request.getParameter("act_cedula"));
			UsuarioDTO user = userDao.buscar_usuario(cedula);
			if (user != null) {
				request.setAttribute("cedula", user.getCedula_usuario());
				request.setAttribute("nombre", user.getNombre_usuario());
				request.setAttribute("correo", user.getEmail_usuario());
				request.setAttribute("usuario", user.getUsuario());
				request.setAttribute("clave", user.getPassword());
				rd.forward(request, response);
			} else {
				JOptionPane.showMessageDialog(null, "El usuario no existe");
				request.setAttribute("mensaje", "El usuario no existe.");
				response.sendRedirect("Usuarios.jsp");
			}

		}

		// validar si se presiono boton actualizar

		if (request.getParameter("actualizar") != null) {
			int cedula;
			String nombre, correo, usuario, clave, estado = "";

			// cargar la info del formulario a las variables
			cedula = Integer.parseInt(request.getParameter("ced"));
			nombre = request.getParameter("nombre");
			correo = request.getParameter("correo");
			usuario = request.getParameter("usuario");
			clave = request.getParameter("clave");

			// cargar las variables al nuevo objeto
			UsuarioDTO user = new UsuarioDTO(cedula, correo, nombre, usuario, clave);

			// insertar el nuevo usuario
			if (userDao.actualizar_usuario(user)) {
				
				request.setAttribute("mensaje", "Usuario actualizado exitosamente.");
				request.setAttribute(estado, "disabled");
			} else {
				
				request.setAttribute("mensaje", "Fallo al actualizar");
			}

			rd.forward(request, response);

		}
		
		// validar si se presiono boton borrrar
		
		if(request.getParameter("borrar") != null) {
			int cedula;
			
			
			// cargar la info del formulario a las variables
			cedula = Integer.parseInt(request.getParameter("ced"));
			
								
			//eliminar el usuario
			int op = JOptionPane.showConfirmDialog(null, "Desea eliminar el usuario: "+cedula);
			if(op == 0) {
				if(userDao.eliminar_usuario(cedula)) {				
					request.setAttribute("mensaje", "Usuario eliminado exitosamente.");
				} else {				
					request.setAttribute("mensaje", "Fallo al eliminar");
				}
				request.removeAttribute("cedula");
				request.removeAttribute("nombre");
				request.removeAttribute("correo");
				request.removeAttribute("usuario");
				request.removeAttribute("clave");
			}
			rd.forward(request, response);
			
	
		}

	}

}
