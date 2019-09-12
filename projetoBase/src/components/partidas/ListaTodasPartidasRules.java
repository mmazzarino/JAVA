package components.partidas;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbc.ConnectionFactory;
import mvc.interfaceRules.Rules;

public class ListaTodasPartidasRules implements Rules{
	
	
	//metodo chamado pela controller
	public String executa(HttpServletRequest request, 
			HttpServletResponse response) throws Exception{
		
		new ConnectionFactory();
		Connection connection = (Connection) ConnectionFactory.getConnection();
		DaoPartidas dao = new DaoPartidas(connection);
		
		try{
			ArrayList<Partidas> listaPartidas = dao.pegaTodasPartidas();
			request.setAttribute("listaPartidas", listaPartidas);
			dao.encerraConexao();
		
		} catch(Exception e){
			e.printStackTrace();
		}

		return "templates/partidas/tabelaListaPartidas.jsp";
	}
	
	//metodo chamado pelo Dwr
	public String[][] executa() throws Exception{
		
		String matriz[][] = null;
		
		new ConnectionFactory();
		Connection connection = (Connection) ConnectionFactory.getConnection();
		DaoPartidas dao = new DaoPartidas(connection);
		
		try{
			ArrayList<Partidas> listaPartidas = dao.pegaTodasPartidas();
			dao.encerraConexao();
			
			int numColunas = 3;
			int cont = 0;
			matriz = new String[listaPartidas.size()][numColunas];
			
			for(Partidas partida : listaPartidas) {
				matriz[cont][0] = Integer.toString(partida.getCodPartida());
				matriz[cont][1] = partida.getDataPartida();
				matriz[cont][2] = Integer.toString(partida.getCodAviao());
				cont++;
			}
		
		} catch(Exception e){
			e.printStackTrace();
		}

		return matriz;
	}
}
