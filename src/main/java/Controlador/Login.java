package Controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

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
		
		if (request.getParameter("Aceptar") != null) {
			RequestDispatcher rd = null;
			String usuario, clave;
			usuario = request.getParameter("usuario");
			clave = request.getParameter("clave");
			if (usuario.equals("admininicial") && clave.equals("admin123456")) {
				rd = request.getRequestDispatcher("Menu.jsp");
				rd.forward(request, response);
			} else {
				JOptionPane.showMessageDialog(null, "Usuario o contraseña incorrecta");
				rd = request.getRequestDispatcher("Index.jsp");
				rd.forward(request, response);
			}
		}
	}
}