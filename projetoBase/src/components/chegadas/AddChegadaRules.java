package components.chegadas;

import java.sql.Connection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jdbc.ConnectionFactory;
import mvc.interfaceRules.Rules;

public class AddChegadaRules implements Rules {

	
	//metodo chamado pela controller
	public String executa(HttpServletRequest request, 
			HttpServletResponse response) throws Exception{		

		Chegadas chegadaValue = new Chegadas();

		chegadaValue.setCodChegada(Integer.parseInt(request.getParameter("codChegada")));
		chegadaValue.setDataChegada(request.getParameter("dataChegada"));
		chegadaValue.setCodAviao(Integer.parseInt(request.getParameter("codAviao")));

		new ConnectionFactory();
		Connection connection = (Connection)  ConnectionFactory.getConnection();	
		DaoChegadas dao = new DaoChegadas(connection);

		try {
			dao.addChegada(chegadaValue);
			dao.encerraConexao();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "retornoComp1.html";
	}
	
	//metodo chamado pelo DWR
	public void executa(String[] formulario) throws Exception{	
		
		Chegadas chegadaValue = new Chegadas();
		
		chegadaValue.setCodChegada(Integer.parseInt(formulario[0]));
		chegadaValue.setDataChegada(formulario[1]);
		chegadaValue.setCodAviao(Integer.parseInt(formulario[2]));
		
		new ConnectionFactory();
		Connection connection = (Connection)  ConnectionFactory.getConnection();	
		DaoChegadas dao = new DaoChegadas(connection);

		try {
			dao.addChegada(chegadaValue);
			dao.encerraConexao();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}