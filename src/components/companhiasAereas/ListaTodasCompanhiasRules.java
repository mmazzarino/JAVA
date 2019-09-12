package components.companhiasAereas;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbc.ConnectionFactory;
import mvc.interfaceRules.Rules;

public class ListaTodasCompanhiasRules implements Rules {

	
	//metodo chamado pela controller
	public String executa(HttpServletRequest request, 
			HttpServletResponse response) throws Exception{

		new ConnectionFactory();
		Connection connection = (Connection)  ConnectionFactory.getConnection();
		DaoCompanhias dao = new DaoCompanhias(connection);

		try {
			ArrayList<Companhias> listaCompanhias = dao.pegaTodasCompanhias();
			request.setAttribute("listaCompanhias", listaCompanhias);
			dao.encerraConexao();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "templates/companhiasAereas/tabelaListaCompanhias.jsp";
	}
	
	
	//metodo chamado pelo Dwr
	public String[][] executa() throws Exception{
		
		String[][] matriz = null;
		
		new ConnectionFactory();
		Connection connection = (Connection)  ConnectionFactory.getConnection();
		DaoCompanhias dao = new DaoCompanhias(connection);

		try {
			ArrayList<Companhias> listaCompanhias = dao.pegaTodasCompanhias();
			dao.encerraConexao();
			
			int cont = 0;
			int numColunas = 2;
			matriz = new String[listaCompanhias.size()][numColunas];
			
			for(Companhias companhia : listaCompanhias) {
				matriz[cont][0] = Integer.toString(companhia.getCodCompanhia());
				matriz[cont][1] = companhia.getNome();
				cont ++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return matriz;
	}
}