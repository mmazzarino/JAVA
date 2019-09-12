package components.companhiasAereas;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbc.ConnectionFactory;
import mvc.interfaceRules.Rules;

public class AlteraCompanhiaRules implements Rules{
	
	//metodo chamado pela controller
	public String executa(HttpServletRequest request, 
			HttpServletResponse response) throws Exception{
				
		int i = Integer.parseInt(request.getParameter("codCompanhiaAlt"));
		Companhias companhiaValue = new Companhias();
		companhiaValue.setCodCompanhia(Integer.parseInt(request.getParameter("codCompanhia")));
		companhiaValue.setNome(request.getParameter("nome"));
		
		new ConnectionFactory();
		Connection connection = (Connection) ConnectionFactory.getConnection();
		
		try {	
			DaoCompanhias dao = new DaoCompanhias(connection);
			dao.alteraCompanhia(i, companhiaValue);
			dao.encerraConexao();
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "retornoComp1.html";
	}
	
	//metodo chamado pelo Dwr
	public void executa(String[] formulario) throws Exception{
		
		int i = Integer.parseInt(formulario[0]);
		Companhias companhiaValue = new Companhias();
		companhiaValue.setCodCompanhia(Integer.parseInt(formulario[1]));
		companhiaValue.setNome(formulario[2]);
		
		new ConnectionFactory();
		Connection connection = (Connection) ConnectionFactory.getConnection();
		
		try {	
			DaoCompanhias dao = new DaoCompanhias(connection);
			dao.alteraCompanhia(i, companhiaValue);
			dao.encerraConexao();
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
