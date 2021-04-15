package controlador;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.bean.*;
import modelo.dao.*;

/**
 * Servlet implementation class VerActividad
 */
@WebServlet("/VerActividad")
public class VerActividad extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public VerActividad() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int idActividad = Integer.parseInt(request.getParameter("id"));
		String msg = request.getParameter("msg");

		ModeloActividad mActividad = new ModeloActividad();
		//Actividad actividad = mActividad.getConUsuariosInscritos(idActividad);
		Actividad actividad = mActividad.get(idActividad);

		ModeloUsuario mUsuario = new ModeloUsuario();
		ArrayList<Usuario> usuarios = mUsuario.selectAll();

		request.setAttribute("usuarios", usuarios);
		request.setAttribute("actividad", actividad);
		
		if(msg !=null) {
			request.setAttribute("msg", msg);
		}

		request.getRequestDispatcher("verActividad.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
