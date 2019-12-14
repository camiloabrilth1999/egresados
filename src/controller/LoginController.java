package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.EgresadoDao;
import dao.UsuarioDao;
import model.Egresado;
import model.Usuario;
import util.ExceptionInvalidUser;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tipoUsuario = request.getParameter("tipo_usuario");
		
		HttpSession session = request.getSession(true);
		if(tipoUsuario.equals("EGRESADO")) {
			Egresado e = new Egresado();
			EgresadoDao eDao = new EgresadoDao();
			
			e.setId(Integer.parseInt(request.getParameter("id")));
			e = eDao.find(e.getId());
			if (e!=null) {
				
				if(e.getClave().equals(request.getParameter("clave"))) {
					session.setAttribute("egresado", e);
				}else {
					//clave incorrecta
					session.setAttribute("fail_login", "Usuario o Clave Incorrecta");
					response.sendRedirect(request.getContextPath() + "/Login.jsp");
				}
			}else {
				//usuario no existe
				session.setAttribute("fail_login", "Usuario no Existe");
				response.sendRedirect(request.getContextPath() + "/Login.jsp");
			}
			
		}else if(tipoUsuario.equals("ADMINISTRADOR")) {
			Usuario u = new Usuario();
			UsuarioDao uDao = new UsuarioDao();
			u.setUsuario(request.getParameter("id"));
			u = uDao.find(u.getUsuario());
			
			if(u!=null) {
				try {
					if(!u.getClave().equals(request.getParameter("clave"))) {
						throw new ExceptionInvalidUser("Usuario o Clave Incorrecta");
					}
					session.setAttribute("admin", u);
					response.sendRedirect(request.getContextPath() + "/principal.jsp");
				} catch (ExceptionInvalidUser e) {
					//clave incorrecta
					session.setAttribute("fail_login", "Usuario o Clave Incorrecta");
					response.sendRedirect(request.getContextPath() + "/Login.jsp");
					
				}
			}else {
				//usuario no existe
				session.setAttribute("fail_login", "Usuario no Existe");
				response.sendRedirect(request.getContextPath() + "/Login.jsp");
			}
			
		}else {
			
		}
	}

}
