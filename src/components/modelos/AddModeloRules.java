package components.modelos;

import java.sql.Connection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jdbc.ConnectionFactory;
import mvc.interfaceRules.Rules;
import components.modelos.Modelos;

public class AddModeloRules implements Rules {
	
	//metodo chamado pela controller
	public String executa(HttpServletRequest request, 
			HttpServletResponse response) throws Exception{
		
		Modelos modeloValue = new Modelos();		
		modeloValue.setCodModelo(Integer.parseInt(request.getParameter("codModelo")));
		modeloValue.setDescricao(request.getParameter("descricaoModelo"));

		new ConnectionFactory();
		Connection connection = (Connection)  ConnectionFactory.getConnection();		
		DaoModelos dao = new DaoModelos(connection);
		
		try {
			dao.addModelo(modeloValue);
			dao.encerraConexao();
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "retornoComp1.html";
	}
	
	//metodo chamado pelo Dwr
	public void executa(String [] formulario) throws Exception{
		Modelos modeloValue = new Modelos();
		
		modeloValue.setCodModelo(Integer.parseInt(formulario[0]));
		modeloValue.setDescricao(formulario[1]);
		
		new ConnectionFactory();
		Connection connection = (Connection)  ConnectionFactory.getConnection();		
		DaoModelos dao = new DaoModelos(connection);
		
		try {
			dao.addModelo(modeloValue);
			dao.encerraConexao();
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}