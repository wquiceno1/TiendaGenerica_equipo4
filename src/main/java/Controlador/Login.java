package Controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import Modelo.UsuarioDAO;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UsuarioDAO userDao = new UsuarioDAO();
		if (request.getParameter("Aceptar") != null) {
			RequestDispatcher rd = null;
			String usuario, clave;
			usuario = request.getParameter("usuario");
			clave = request.getParameter("clave");
			if(userDao.login_usuarios(usuario, clave)) {
				response.sendRedirect("Menu.jsp");
			} else {
				//JOptionPane.showMessageDialog(null, "Usuario o contraseña incorrecta");
				response.sendRedirect("Index.jsp?men=Usuario o password incorrecta");
			}
			
		}
		
		if (request.getParameter("Cancelar") != null) {
			response.sendRedirect("Index.jsp");		
		}
	}
}