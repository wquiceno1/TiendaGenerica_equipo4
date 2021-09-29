package Controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import Modelo.ClienteDAO;
import Modelo.ClienteDTO;
import Modelo.UsuarioDAO;
import Modelo.UsuarioDTO;

/**
 * Servlet implementation class Clientes
 */
@WebServlet("/Clientes")
public class Clientes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Clientes() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
				//Instanciar el dao que tiene los metodos aplicables a los usuarios
				ClienteDAO clienteDao = new ClienteDAO();

				//crear un despacher para redireccionar
				RequestDispatcher rd = request.getRequestDispatcher("Cliente.jsp");

				// validar si se presiono boton crear

				if (request.getParameter("insertar") != null) {
					int cedula;
					String nombre, correo, direccion, telefono;

					// cargar la info del formulario a las variables
					cedula = Integer.parseInt(request.getParameter("cedula"));
					nombre = request.getParameter("nombre");
					correo = request.getParameter("correo");
					direccion = request.getParameter("direccion");
					telefono = request.getParameter("telefono");

					// cargar las variables al nuevo objeto
					ClienteDTO cliente = new ClienteDTO(cedula, direccion, correo, nombre, telefono);

					// insertar el nuevo usuario
					if (clienteDao.insertar_cliente(cliente)) {
						request.setAttribute("mensaje", "Cliente registrado exitosamente.");
					} else {
						request.setAttribute("mensaje", "Fallo en el registro de cliente");
					}

					rd.forward(request, response);
					request.removeAttribute("cedula");
					request.removeAttribute("nombre");
					request.removeAttribute("correo");
					request.removeAttribute("direccion");
					request.removeAttribute("telefono");
				}
				
				// validar si se presiono boton consultar

				if (request.getParameter("consultar") != null) {
					int cedula = Integer.parseInt(request.getParameter("act_cedula"));
					ClienteDTO cliente = clienteDao.buscar_cliente(cedula);
					if (cliente != null) {
						request.setAttribute("cedula", cliente.getCedula_cliente());
						request.setAttribute("nombre", cliente.getNombre_cliente());
						request.setAttribute("correo", cliente.getEmail_cliente());
						request.setAttribute("direccion", cliente.getDireccion_cliente());
						request.setAttribute("telefono", cliente.getTelefono_cliente());
						rd.forward(request, response);
					} else {
						request.setAttribute("mensaje", "El cliente no existe.");
						response.sendRedirect("Cliente.jsp");
					}

				}
		
	}

}
