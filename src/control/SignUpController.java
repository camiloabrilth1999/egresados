package control;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.EgresadoDao;
import model.Egresado;
import dao.ProgramaDao;
import model.Programa;

/**
 * Servlet implementation class SignUpController
 */
@WebServlet("/SignUpController")
public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SignUpController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProgramaDao ppDao = new ProgramaDao();
		
		request.setAttribute("ppDao", ppDao);
		
		request.getRequestDispatcher("/signUp.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String documento = request.getParameter("documento");
		String nombre = request.getParameter("nombre");
		String telefono = request.getParameter("telefono");
		String email = request.getParameter("email");
		String codigo = request.getParameter("codigo");
		String clave = request.getParameter("clave");
		String programa = request.getParameter("programa");
		
		ProgramaDao pdao = new ProgramaDao();
		
		Programa prog = pdao.find(Integer.parseInt(programa));		
		
		Egresado egresado = new Egresado(documento, nombre, telefono, email,
				codigo, clave, prog.getCodigo());
		
		EgresadoDao egdao = new EgresadoDao();
		Egresado e = egdao.find(egresado.getId());
		
		if (e == null) {
			egdao.insert(egresado);
			response.getWriter().append("Se ha registrado correctamente");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} else {
			response.getWriter().append("El heroe ya existe.");
			request.getRequestDispatcher("").forward(request, response);
		}

	}

}
