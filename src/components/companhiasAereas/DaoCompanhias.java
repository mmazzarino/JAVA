package components.companhiasAereas;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DaoCompanhias {

	private 
	Connection connection;
	PreparedStatement stmt;
	ResultSet rs;

	DaoCompanhias(Connection connection){
		this.connection = connection;
		stmt = null;
		rs = null;
	}

	public void addCompanhia(Companhias objCompanhia) {

		try {
			stmt = connection.prepareStatement("insert into CompanhiasAereas values (?, ?)");

			stmt.setInt(1,  objCompanhia.getCodCompanhia());
			stmt.setString(2, objCompanhia.getNome());
			stmt.execute();

			System.out.println("Gravado!");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Companhias> pegaTodasCompanhias(){

		ArrayList<Companhias> listaCompanhias = new ArrayList<Companhias>();

		try {
			stmt = connection.prepareStatement("select * from CompanhiasAereas");
			rs = stmt.executeQuery();

			while(rs.next()) {

				Companhias companhiaValue = new Companhias();				
				companhiaValue.setCodCompanhia(rs.getInt("CodCompanhia"));
				companhiaValue.setNome(rs.getString("Nome"));

				listaCompanhias.add(companhiaValue);}

		} catch (Exception e) {
			e.printStackTrace();
		}	

		return listaCompanhias;
	}

	public void alteraCompanhia(int i, Companhias companhiaValue) {
		try {


			stmt = connection.prepareStatement(" update CompanhiasAereas"
					+ " 	set CodCompanhia = ?,"
					+ "        Nome = ?"
					+ " where CodCompanhia = " + i);

			stmt.setInt(1, companhiaValue.getCodCompanhia());
			stmt.setString(2, companhiaValue.getNome());
			stmt.execute();

		} catch (Exception e) {	
			e.printStackTrace();
		}
	}

	public void excluiCompanhia(int i) {
		try {
			stmt = connection.prepareStatement("delete from CompanhiasAereas where CodCompanhia = " + i);
			stmt.execute();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void encerraConexao() {
		if(rs != null) {   
			try {
				rs.close();
				System.out.println("ResultSet encerrado");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		if(stmt != null) {
			try {
				stmt.close();
				System.out.println("PreparedStatement encerrado");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}		
}



