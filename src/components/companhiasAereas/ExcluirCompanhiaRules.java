package components.companhiasAereas;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbc.ConnectionFactory;
import mvc.interfaceRules.Rules;

public class ExcluirCompanhiaRules implements Rules{
	
	
	//metodo chamado pela controller
	public String executa(HttpServletRequest request,
			HttpServletResponse response) throws Exception{
		
		int i = Integer.parseInt(request.getParameter("codCompanhiaExc"));
		
		new ConnectionFactory();
		Connection connection = (Connection) ConnectionFactory.getConnection();
		DaoCompanhias dao = new DaoCompanhias(connection);
		
		try {
			dao.excluiCompanhia(i);
			dao.encerraConexao();
			
		} catch (Exception e) {
			e.printStackTrace();
		}			
		return "retornoComp1.html";
	}
	
	//metodo chamado pelo Dwr
	
	public void executa(String aux) throws Exception{
		
		int i = Integer.parseInt(aux);
		
		new ConnectionFactory();
		Connection connection = (Connection) ConnectionFactory.getConnection();
		DaoCompanhias dao = new DaoCompanhias(connection);
		
		try {
			dao.excluiCompanhia(i);
			dao.encerraConexao();
			
		} catch (Exception e) {
			e.printStackTrace();
		}			
	}
}
