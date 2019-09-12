package relatorios.chegadas;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbc.ConnectionFactory;
import mvc.interfaceRules.Rules;


public class RelChegadasRules implements Rules{
	public String executa(HttpServletRequest request, 
			HttpServletResponse response) throws Exception{
		
		String usuario = request.getParameter("usuario");
		String dtIni = request.getParameter("dtIni");
		String dtFim = request.getParameter("dtFim");
		
		request.setAttribute("usuario", usuario);
		request.setAttribute("dtIni", dtIni);
		request.setAttribute("dtFim", dtFim);
		
		new ConnectionFactory();
		Connection connection = (Connection) ConnectionFactory.getConnection();
		DaoRelChegadas dao = new DaoRelChegadas(connection);
			
		try {
			dao.relChegadas(usuario, dtIni, dtFim);
			dao.encerraConexao();
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return "templates/relatorios/chegadas/relChegadasPDF.jsp";
	}
}
