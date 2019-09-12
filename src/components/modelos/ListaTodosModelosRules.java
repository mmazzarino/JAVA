package components.modelos;

import java.sql.Connection;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jdbc.ConnectionFactory;
import mvc.interfaceRules.Rules;

public class ListaTodosModelosRules implements Rules{
	
	
	//metodo chamado pela controller
	public String executa(HttpServletRequest request, 
			HttpServletResponse response) throws Exception{
		
		new ConnectionFactory();
		Connection connection = (Connection)  ConnectionFactory.getConnection();				
		DaoModelos dao = new DaoModelos(connection);
		
		try{
			ArrayList<Modelos> listaModelos = dao.pegaTodosModelos();		
			request.setAttribute("listaModelos", listaModelos);
			dao.encerraConexao();
		
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		return "templates/modelos/tabelaListaModelos.jsp";
	}
	
	//metodo chamado pelo Dwr
	public String[][] executa() throws Exception{
		
		String[][] matriz = null;
		
		new ConnectionFactory();
		Connection connection = (Connection)  ConnectionFactory.getConnection();				
		DaoModelos dao = new DaoModelos(connection);
		
		try{
			ArrayList<Modelos> listaModelos = dao.pegaTodosModelos();		
			dao.encerraConexao();
			
			int numColunas = 2;
			matriz = new String[listaModelos.size()][numColunas];
			int cont = 0;
			
			for(Modelos modelo : listaModelos) {
				matriz[cont][0] = Integer.toString(modelo.getCodModelo());
				matriz[cont][1] = modelo.getDescricao();
				cont++;
			}		
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		return matriz;
	}
}
