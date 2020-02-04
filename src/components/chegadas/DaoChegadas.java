package components.chegadas;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DaoChegadas {
	private 
	Connection connection;
	PreparedStatement stmt;
	ResultSet rs;

	public DaoChegadas(Connection connection) {
		this.connection = connection;
		stmt = null;
		rs = null;
	}

	public void addChegada(Chegadas objChegada) {
		try {

			stmt = connection.prepareStatement(" insert into Chegadas values (?, convert(datetime, replace(?, 'T', ' '), 102), ?)");
			stmt.setInt(1, objChegada.getCodChegada());
			stmt.setString(2, objChegada.getDataChegada());
			stmt.setInt(3, objChegada.getCodAviao());

			stmt.execute();
			System.out.println("Gravado!");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Chegadas> pegaTodasChegadas(){
		ArrayList<Chegadas> listaChegadas = new ArrayList<Chegadas>();

		try {
			stmt = connection.prepareStatement("select * from Chegadas");
			rs = stmt.executeQuery();

			while(rs.next()) {
				Chegadas chegadaValue = new Chegadas();
				chegadaValue.setCodChegada(rs.getInt("CodChegada"));
				chegadaValue.setDataChegada(rs.getString("DataChegada"));
				chegadaValue.setCodAviao(rs.getInt("CodAviao"));

				listaChegadas.add(chegadaValue);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}	  
		return listaChegadas;
	}

	public void alteraChegada(int i, Chegadas chegadaValue) {
		try {
			stmt = connection.prepareStatement(" update Chegadas"
					+ " 	set CodChegada = ?,"
					+ "        DataChegada = convert(datetime, replace(?, 'T', ' '), 102),"
					+ "        CodAviao = ?"
					+ " where CodChegada = " + i);
			stmt.setInt(1, chegadaValue.getCodChegada());
			stmt.setString(2, chegadaValue.getDataChegada());
			stmt.setInt(3, chegadaValue.getCodAviao());
			stmt.execute();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void excluiChegada(int i) {
		try {
			stmt = connection.prepareStatement("delete from Chegadas where CodChegada = " + i);
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


