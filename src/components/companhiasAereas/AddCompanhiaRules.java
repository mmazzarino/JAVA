package components.companhiasAereas;

import java.sql.Connection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jdbc.ConnectionFactory;
import mvc.interfaceRules.Rules;

public class AddCompanhiaRules implements Rules {
	
	//metodo chamado pela controller
	public String executa(HttpServletRequest request, 
			HttpServletResponse response) throws Exception{
		
		Companhias companhiaValue = new Companhias();		
		companhiaValue.setCodCompanhia(Integer.parseInt(request.getParameter("codCompanhia")));
		companhiaValue.setNome(request.getParameter("nomeCompanhia"));
		
		new ConnectionFactory();
		Connection connection = (Connection) ConnectionFactory.getConnection();		
		DaoCompanhias dao = new DaoCompanhias(connection);
		
		try {
			dao.addCompanhia(companhiaValue);
			dao.encerraConexao();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "retornoComp1.html";
	}
	
	//metodo chamado pelo Dwr
	public void executa(String[] formulario) throws Exception{
		
		Companhias companhiaValue = new Companhias();
		
		companhiaValue.setCodCompanhia(Integer.parseInt(formulario[0]));
		companhiaValue.setNome(formulario[1]);
		
		new ConnectionFactory();
		Connection connection = (Connection) ConnectionFactory.getConnection();		
		DaoCompanhias dao = new DaoCompanhias(connection);
		
		try {
			dao.addCompanhia(companhiaValue);
			dao.encerraConexao();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}






