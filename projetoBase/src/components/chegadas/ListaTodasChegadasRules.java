package components.chegadas;

import java.sql.Connection;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import components.avioes.Avioes;
import jdbc.ConnectionFactory;
import mvc.interfaceRules.Rules;

public class ListaTodasChegadasRules implements Rules { 


	//metodo chamado pela controller
	public String executa(HttpServletRequest request, 
			HttpServletResponse response) throws Exception{

		new ConnectionFactory();
		Connection connection = (Connection)  ConnectionFactory.getConnection();
		DaoChegadas dao = new DaoChegadas(connection);

		try {
			ArrayList<Chegadas> listaChegadas = dao.pegaTodasChegadas();
			request.setAttribute("listaChegadas", listaChegadas);
			dao.encerraConexao();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "templates/chegadas/tabelaListaChegadas.jsp";
	}

	//metodo chamado pelo DWR
	public String[][] executa() throws Exception{

		String matriz[][] = null;

		new ConnectionFactory();
		Connection connection = (Connection)  ConnectionFactory.getConnection();
		DaoChegadas dao = new DaoChegadas(connection);

		try {
			ArrayList<Chegadas> listaChegadas = dao.pegaTodasChegadas();
			dao.encerraConexao();

			int numColunas = 3;
			matriz = new String[listaChegadas.size()][numColunas];
			int cont = 0;

			for(Chegadas chegada : listaChegadas) {

				matriz[cont][0] = Integer.toString(chegada.getCodChegada());
				matriz[cont][1] = chegada.getDataChegada();					
				matriz[cont][2] = Integer.toString(chegada.getCodAviao());

				cont++;
			}


		} catch (Exception e) {
			e.printStackTrace();
		}

		return matriz;
	}

}

