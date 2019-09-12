package components.modelos;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbc.ConnectionFactory;
import mvc.interfaceRules.Rules;

public class AlteraModeloRules implements Rules{
	
	//metodo chamado pela controller
	public String executa(HttpServletRequest request,
			HttpServletResponse response) throws Exception{
				
		int i = Integer.parseInt(request.getParameter("codModeloAlt"));
		Modelos modeloValue = new Modelos();
		modeloValue.setCodModelo(Integer.parseInt(request.getParameter("codModelo")));
		modeloValue.setDescricao(request.getParameter("descricao"));
		
		new ConnectionFactory();
		Connection connection = (Connection) ConnectionFactory.getConnection();
		
		try {
			DaoModelos dao = new DaoModelos(connection);
			dao.alteraModelo(i, modeloValue);
			dao.encerraConexao();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "retornoComp1.html";
	}
	
	//metodo chamado pelo Dwr
	public void executa(String[] formulario)throws Exception{
		
		int i = Integer.parseInt(formulario[0]);
		Modelos modeloValue = new Modelos();
		
		modeloValue.setCodModelo(Integer.parseInt(formulario[1]));
		modeloValue.setDescricao(formulario[2]);
		
		new ConnectionFactory();
		Connection connection = (Connection) ConnectionFactory.getConnection();
		
		try {
			DaoModelos dao = new DaoModelos(connection);
			dao.alteraModelo(i, modeloValue);
			dao.encerraConexao();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
