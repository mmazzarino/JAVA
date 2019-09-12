package components.avioes;

import java.sql.Connection;
import jdbc.ConnectionFactory;

public class DwrAddAviao {

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
