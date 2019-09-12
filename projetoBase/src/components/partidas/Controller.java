package components.partidas;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.interfaceRules.Rules;

@WebServlet("/partida")
public class Controller extends HttpServlet  {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, 
			HttpServletResponse response)
					throws ServletException, IOException{
		
		String parametro = request.getParameter("Rules");
		System.out.println(parametro);
		
		String nomeDaClasse = "components.partidas." + parametro + "Rules";
		System.out.println(nomeDaClasse);

		try {
			Class<?> classe = Class.forName(nomeDaClasse);
			System.out.println(classe);
					
			Rules rules = (Rules) classe.newInstance();
			System.out.println(rules);
			
			String pagina = rules.executa(request, response);
			System.out.println(pagina);
			
			request.getRequestDispatcher(pagina).forward(request, response);

		} catch (Exception e) {
			throw new ServletException(
					"A lógica de negócios causou uma exceção", e);
		}
	}
}