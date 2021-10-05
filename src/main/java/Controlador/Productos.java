package Controlador;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;

import Modelo.ProductosDAO;

/**
 * Servlet implementation class Productos
 */
@WebServlet("/Productos")
@MultipartConfig
public class Productos extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// instaciar el procto dao
		ProductosDAO prod = new ProductosDAO();

		if (request.getParameter("cargar") != null) {
			Part archivo = request.getPart("archivo");

			String url = "C:/Users/William/eclipse-workspace/CRUD/TiendaGenerica_equipo4/src/main/webapp/Documentos/";
			try {
				InputStream file = archivo.getInputStream();
				File copia = new File(url + "prueba.csv");
				FileOutputStream escribir = new FileOutputStream(copia);
				int num = file.read();
				while (num != -1) {
					escribir.write(num);
					num = file.read();
				}
				escribir.close();
				file.close();
				JOptionPane.showMessageDialog(null, "Se cargo el archivo");
				if (prod.Cargar_Productos(url + "prueba.csv")) {
					response.sendRedirect("Productos.jsp?men=Productos insertados correctamente..");
				} else {
					response.sendRedirect("Productos.jsp?men=Error al registrar productos..");
				}
			} catch (Exception e) {
				JOptionPane.showMessageDialog(null, "Error de archivo" + e);
			}
		}

	}

}
