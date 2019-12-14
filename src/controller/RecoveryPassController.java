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

import com.gimnasio.entities.Socio;
import com.gimnasio.model.SocioDAO;
import com.gimnasio.util.ServicioEmail;

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
		
		if (request.getParameter("clave1").equals(request.getParameter("clave2"))) {
			s = (Socio)sDao.find(Integer.parseInt(request.getParameter("id")));
			s.setClave(request.getParameter("clave1"));
			sDao.insert(s);
			
			response.sendRedirect(request.getContextPath() + "/index.jsp");
		} else {
			sesion.setAttribute("error_msg", "Las claves no coinciden");
			response.sendRedirect(request.getContextPath() + "/ErrorPage.jsp");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String opcion = request.getParameter("opcion");
		String tipoUsuario = request.getParameter("tipo_usuario");
		
		if (opcion.equals("CHANGE_PASS")) {
			
			if(tipoUsuario.equals("EGRESADO")) {
				Egresado e = new Egresado();
				EgresadoDao eDao = new EgresadoDao();
				e = eDao.find(Integer.parseInt(request.getParameter("codigo")));
				
				if(e!=null) {
					util.ServicioEmail sEmail = new util.ServicioEmail("jefersonurielhc@ufps.edu.co", "dvhawulugeuevjee");
					sEmail.enviarEmail(e.getEmail(), "asunto", "mensaje "
							+ "localhost:8080/egresados" + "/SetNewPass.jsp");
					
				}else {
					//Usuario no existe
				}
				
			}else {
				Usuario u = new Usuario();
				UsuarioDao uDao = new UsuarioDao();
				u.setUsuario(request.getParameter("codigo"));
				u = uDao.find(u.getUsuario());
				if(u!=null) {
					util.ServicioEmail sEmail = new util.ServicioEmail("jefersonurielhc@ufps.edu.co", "dvhawulugeuevjee");
					sEmail.enviarEmail(u.getEmail(), "asunto", "mensaje "
							+ "localhost:8080/egresados" + "/SetNewPass.jsp");
					
				}else {
					//Usuario no existe
				}
				
			}
			

			doGet(request, response);

		} 
		/*else if (opcion.equals("RECOVERY_PASS")) {
			
			s = sDao.find(Integer.parseInt(request.getParameter("codigo")));
		

			ServicioEmail sEmail = new ServicioEmail("jefersonurielhc@ufps.edu.co", "dvhawulugeuevjee");
			sEmail.enviarEmail(s.getDireccion(), "Gimnasio en Forma Cambio de Clave", "solicitaste un cambio de clave haz click en el siguiente enlace "
					+ "http://18.225.6.92:8080/com.gimnasio" + "/SetNewPass.jsp");

			response.sendRedirect(request.getContextPath() + "/index.jsp");
		}*/

	}

}
