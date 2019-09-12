package components.partidas;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbc.ConnectionFactory;
import mvc.interfaceRules.Rules;

public class AlteraPartidaRules implements Rules{
	
	
	//metodo chamado pela controller
	public String executa(HttpServletRequest request,
			HttpServletResponse response) throws Exception{
		
		int i = Integer.parseInt(request.getParameter("codPartidaAlt"));
		Partidas partidaValue = new Partidas();
		partidaValue.setCodPartida(Integer.parseInt(request.getParameter("codPartida")));
		partidaValue.setDataPartida(request.getParameter("dataPartida"));
		partidaValue.setCodAviao(Integer.parseInt(request.getParameter("codAviao")));
		
		new ConnectionFactory();
		Connection connection = (Connection) ConnectionFactory.getConnection();
		DaoPartidas dao = new DaoPartidas(connection);
		
		try {
			dao.alteraPartida(i, partidaValue);
			dao.encerraConexao();
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "menu.html";
	}
	
	
	//metodo chamado pelo DWR
	public void executa(String[] formulario)throws Exception{
		int i = Integer.parseInt(formulario[0]);
		
		Partidas partidaValue = new Partidas();
		partidaValue.setCodPartida(Integer.parseInt(formulario[1]));
		partidaValue.setDataPartida(formulario[2]);
		partidaValue.setCodAviao(Integer.parseInt(formulario[3]));
		
		new ConnectionFactory();
		Connection connection = (Connection) ConnectionFactory.getConnection();
		DaoPartidas dao = new DaoPartidas(connection);
		
		try {
			dao.alteraPartida(i, partidaValue);
			dao.encerraConexao();
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
