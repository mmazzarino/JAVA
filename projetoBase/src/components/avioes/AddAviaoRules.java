package components.avioes;

import java.sql.Connection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jdbc.ConnectionFactory;
import mvc.interfaceRules.Rules;

public class AddAviaoRules implements Rules {
	
	
	//metodo chamado pela controller
	public String executa(HttpServletRequest request, 
			HttpServletResponse response) throws Exception{
		

		Avioes aviaoValue = new Avioes();
		
		aviaoValue.setCodAviao(Integer.parseInt(request.getParameter("codAviao")));
		aviaoValue.setNomeAviao(request.getParameter("nomeAviao"));
		aviaoValue.setAltitudeMaxima(Double.parseDouble(request.getParameter("altitudeMaxima")));
		aviaoValue.setDistanciaMaxima(Double.parseDouble(request.getParameter("distanciaMaxima")));
		aviaoValue.setCodModelo(Integer.parseInt(request.getParameter("codigoModelo")));
		aviaoValue.setCodCompanhia(Integer.parseInt(request.getParameter("codigoCompanhia")));
		
		new ConnectionFactory();
		Connection connection = (Connection)  ConnectionFactory.getConnection();
		
		DaoAvioes dao = new DaoAvioes(connection);
		
		try {
			dao.addAviao(aviaoValue);
			dao.encerraConexao();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "retornoComp1.html";
	}
	
	
	//metodo chamado pelo DWR
	public void executa(String[] formulario) throws Exception{
		
		Avioes aviaoValue = new Avioes();
				
		aviaoValue.setCodAviao(Integer.parseInt(formulario[0]));
		aviaoValue.setNomeAviao(formulario[1]);
		aviaoValue.setAltitudeMaxima(Double.parseDouble(formulario[2]));
		aviaoValue.setDistanciaMaxima(Double.parseDouble(formulario[3]));
		aviaoValue.setCodModelo(Integer.parseInt(formulario[4]));
		aviaoValue.setCodCompanhia(Integer.parseInt(formulario[5]));
		
		new ConnectionFactory();
		Connection connection = (Connection)  ConnectionFactory.getConnection();
		
		DaoAvioes dao = new DaoAvioes(connection);
		
		try {
			dao.addAviao(aviaoValue);
			dao.encerraConexao();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}