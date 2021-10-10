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

import Modelo.VentasDAO;
import Modelo.VentasDTO;
import Modelo.VentasDetalleDTO;
import Modelo.ClienteDAO;
import Modelo.ClienteDTO;

/**
 * Servlet implementation class Ventas
 */
@WebServlet("/Ventas")
public class Ventas extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Ventas() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// Instanciar el dao que tiene los metodos aplicables a las ventas
		
		VentasDAO ventasDAO=new VentasDAO();
		ClienteDAO clienteDAO=new ClienteDAO();
		

		// crear un despacher para redireccionar
		
		RequestDispatcher rd=request.getRequestDispatcher("Ventas.sjp");
		
		// validar si se presiono boton consultar cliente
		
		if(request.getParameter("consultar")!=null) {
			
			int cedula=Integer.parseInt(request.getParameter("act_cedula"));
			ClienteDTO cliente=clienteDAO.buscar_cliente(cedula);
			if (cliente!=null) {
				request.setAttribute("act_cliente", cliente.getNombre_cliente());
			}
			
					
		}
		

			// cargar la info del formulario a las variables
			

			// cargar las variables al nuevo objeto

			// insertar el nuevo usuario

		// validar si se presiono boton consultar


		// validar si se presiono boton actualizar



			// cargar la info del formulario a las variables
			//request.setAttribute("estadob", "disabled");

			// cargar las variables al nuevo objeto
			
			// insertar el nuevo usuario

	
		// validar si se presiono boton borrrar
		
		
			
			
			// cargar la info del formulario a las variables
			
								
			//eliminar el usuario
		
			
	
		}

	}


