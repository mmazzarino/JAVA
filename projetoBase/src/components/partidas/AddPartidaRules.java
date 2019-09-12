package components.partidas;

import java.sql.Connection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jdbc.ConnectionFactory;
import mvc.interfaceRules.Rules;

public class AddPartidaRules implements Rules {
	
	
	//metodo chamado pela controller
	public String executa(HttpServletRequest request, 
			HttpServletResponse response) throws Exception{
		
		Partidas partidaValue = new Partidas();		
		partidaValue.setCodPartida(Integer.parseInt(request.getParameter("codPartida")));
		partidaValue.setDataPartida(request.getParameter("dataPartida"));
		partidaValue.setCodAviao(Integer.parseInt(request.getParameter("codAviao")));

		new ConnectionFactory();
		Connection connection = (Connection)  ConnectionFactory.getConnection();		
		DaoPartidas dao = new DaoPartidas(connection);
		
		try {
			dao.addPartida(partidaValue);
			dao.encerraConexao();
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "retornoComp1.html";
	}
	
	
	//metodo chamado pelo DWR
	public void executa(String[] formulario)throws Exception {
		
		Partidas partidaValue = new Partidas();
		
		partidaValue.setCodPartida(Integer.parseInt(formulario[0]));
		partidaValue.setDataPartida(formulario[1]);
		partidaValue.setCodAviao(Integer.parseInt(formulario[2]));
		
		new ConnectionFactory();
		Connection connection = (Connection)  ConnectionFactory.getConnection();		
		DaoPartidas dao = new DaoPartidas(connection);
		
		try {
			dao.addPartida(partidaValue);
			dao.encerraConexao();
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}