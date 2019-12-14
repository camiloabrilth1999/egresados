package controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;


import util.ServicioEmail;

import dao.EgresadoDao;
import dao.UsuarioDao;
import model.Egresado;
import model.Usuario;

/**
 * Servlet implementation class RecoveryPassController
 */
@WebServlet("/RecoveryPassController")
public class RecoveryPassController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RecoveryPassController() {
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
		HttpSession sesion = request.getSession(true);
		String clave1 = request.getParameter("clave1");
		String clave2 = request.getParameter("clave2");
		String tipoUsuario = request.getParameter("tipo_usuario");
		
		if(tipoUsuario.equals("EGRESADO")) {
			Egresado e = new Egresado();
			EgresadoDao eDao = new EgresadoDao();
			e = eDao.find(Integer.parseInt(request.getParameter("id")));
			if(clave1.equals(clave2)) {
				e.setClave(clave1);
				eDao.update(e);
				response.sendRedirect(request.getContextPath() + "/pages/principal.jsp");
			}else {
				sesion.setAttribute("error_msg", "Las claves no coinciden");
				response.sendRedirect(request.getContextPath() + "/pages/ErrorPage.jsp");
			}
			
		}else if(tipoUsuario.equals("USUARIO")) {
			Usuario u = new Usuario();
			UsuarioDao uDao = new UsuarioDao();
			u.setUsuario(request.getParameter("codigo"));
			u = uDao.find(u.getUsuario());
			if(clave1.equals(clave2)) {
				u.setClave(clave1);
				uDao.update(u);
				response.sendRedirect(request.getContextPath() + "/pages/principal.jsp");
			}else {
				sesion.setAttribute("error_msg", "Las claves no coinciden");
				response.sendRedirect(request.getContextPath() + "/pages/ErrorPage.jsp");
			}
			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(true);
		String opcion = request.getParameter("opcion");
		String tipoUsuario = request.getParameter("tipo_usuario");
		
		if (opcion.equals("RECOVERY_PASS")) {
			
			if(tipoUsuario.equals("EGRESADO")) {
				Egresado e = new Egresado();
				EgresadoDao eDao = new EgresadoDao();
				e = eDao.find(Integer.parseInt(request.getParameter("id")));
				
				if(e!=null) {
					ServicioEmail sEmail = new ServicioEmail("jefersonurielhc@ufps.edu.co", "dvhawulugeuevjee");
					sEmail.enviarEmail(e.getEmail(), "Egresados UFPS Recuperacion Clave", "Has solicitado un cambio de clave has click en el siguiente enlace "
							+ "localhost:8080/egresados" + "/pages/CambiarClaveEgresado.jsp");
					
				}else {
					//Usuario no existe
					session.setAttribute("error_msg", "Usuario No Existe");
					response.sendRedirect(request.getContextPath() + "/ErrorPage.jsp");
				}
				
			}else {
				Usuario u = new Usuario();
				UsuarioDao uDao = new UsuarioDao();
				u.setUsuario(request.getParameter("codigo"));
				u = uDao.find(u.getUsuario());
				if(u!=null) {
					util.ServicioEmail sEmail = new util.ServicioEmail("jefersonurielhc@ufps.edu.co", "dvhawulugeuevjee");
					sEmail.enviarEmail(u.getEmail(), "Egresados UFPS Recuperacion Clave", "mensaje "
							+ "localhost:8080/egresados" + "/pages/CambiarClaveUsuario.jsp");
					
				}else {
					//Usuario no existe
					session.setAttribute("error_msg", "Usuario No Existe");
					response.sendRedirect(request.getContextPath() + "/ErrorPage.jsp");System.out.println("##");
				}
				
			}
			

			//doGet(request, response);

		} else if (opcion.equals("CHANGE_PASS")) {
			
			doGet(request, response);
		}

	}

}
