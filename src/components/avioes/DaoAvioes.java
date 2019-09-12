package components.avioes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DaoAvioes {
	private 
	Connection connection;
	PreparedStatement stmt;
	ResultSet rs;

	public DaoAvioes(Connection connection) {
		this.connection = connection;
		stmt = null;
		rs = null;
	}

	public void addAviao(Avioes objAviao) {

		try {

			stmt = connection.prepareStatement("insert into Avioes values (?, ?, ?, ?, ?, ?)");
			stmt.setInt(1, objAviao.getCodAviao());
			stmt.setString(2, objAviao.getNomeAviao());
			stmt.setDouble(3, objAviao.getAltitudeMaxima());
			stmt.setDouble(4, objAviao.getDistanciaMaxima());
			stmt.setInt(5, objAviao.getCodModelo());
			stmt.setInt(6, objAviao.getCodCompanhia());

			stmt.execute();
			System.out.println("Gravado!");

		} catch (Exception e) {
			e.printStackTrace();

		}


	}

	public ArrayList<Avioes> pegaTodosAvioes(){
		ArrayList<Avioes>  listaAvioes = new ArrayList<Avioes>();

		try {

			stmt = connection.prepareStatement("select * from Avioes");
			rs = stmt.executeQuery();

			while(rs.next()) {
				Avioes aviao = new Avioes();
				aviao.setCodAviao(rs.getInt("CodAviao"));
				aviao.setNomeAviao(rs.getString("NomeAviao"));
				aviao.setAltitudeMaxima(rs.getDouble("AltitudeMaxima"));
				aviao.setDistanciaMaxima(rs.getDouble("DistanciaMaxima"));
				aviao.setCodModelo(rs.getInt("CodModelo"));
				aviao.setCodCompanhia(rs.getInt("CodCompanhia"));


				listaAvioes.add(aviao);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}	  
		return listaAvioes;
	}

	public void alteraAviao(int i, Avioes aviaoValue){

		try {
			String sql = " update Avioes"
					   + " 	set CodAviao = ?,"
					   + "      NomeAviao = ?,"
					   + "      AltitudeMaxima = ?,"
					   + "      DistanciaMaxima = ?,"
					   + "      CodModelo = ?, "
					   + "      CodCompanhia = ?"
					   + "	where CodAviao = " + i;

			stmt = connection.prepareStatement(sql);
			stmt.setInt(1, aviaoValue.getCodAviao());
			stmt.setString(2, aviaoValue.getNomeAviao());
			stmt.setDouble(3, aviaoValue.getAltitudeMaxima());
			stmt.setDouble(4, aviaoValue.getDistanciaMaxima());
			stmt.setInt(5, aviaoValue.getCodModelo());
			stmt.setInt(6, aviaoValue.getCodCompanhia());

			stmt.execute();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void excluiAviao(int i) {
		try {
			
			stmt = connection.prepareStatement("delete from Avioes where CodAviao = " + i);
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


