package components.avioes;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbc.ConnectionFactory;
import mvc.interfaceRules.Rules;

public class ListaTodosAvioesRules implements Rules { 

	
	//metodo chamado pela controller
	public String executa(HttpServletRequest request, 
			HttpServletResponse response) throws Exception{	

		new ConnectionFactory();
		Connection connection = (Connection)  ConnectionFactory.getConnection();

		try {
			DaoAvioes dao = new DaoAvioes(connection);
			ArrayList<Avioes> listaAvioes = dao.pegaTodosAvioes();
			request.setAttribute("listaAvioes", listaAvioes);
			dao.encerraConexao();		
		
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "templates/avioes/tabelaListaAvioes.jsp";
	}
	
	//metodo chamado pelo DWR
public String[][] executa() throws Exception{	
		
		
		String matriz[][] = null;
				
		ArrayList<Avioes> listaAvioes = new ArrayList<Avioes>();
				
		new ConnectionFactory();
		Connection connection = (Connection)  ConnectionFactory.getConnection();

		try {
			DaoAvioes dao = new DaoAvioes(connection);
			listaAvioes = (ArrayList<Avioes>)dao.pegaTodosAvioes();
			dao.encerraConexao();				
			
			int numColunas = 6;
			matriz = new String[listaAvioes.size()][numColunas];
			int cont = 0;
		
			for(Avioes aviao : listaAvioes) {

				matriz[cont][0] = Integer.toString(aviao.getCodAviao());
				matriz[cont][1] = aviao.getNomeAviao();					
				matriz[cont][2] = Double.toString(aviao.getAltitudeMaxima());
				matriz[cont][3] = Double.toString(aviao.getDistanciaMaxima());
				matriz[cont][4] = Integer.toString(aviao.getCodModelo());
				matriz[cont][5] = Integer.toString(aviao.getCodCompanhia());									
				cont++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return matriz;	
	}
}

