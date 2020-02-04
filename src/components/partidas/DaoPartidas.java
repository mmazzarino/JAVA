package components.partidas;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DaoPartidas {
	private
	Connection connection;
	PreparedStatement stmt;
	ResultSet rs;

	public DaoPartidas(Connection connection) {
		this.connection = connection;
		stmt = null;
		rs = null;
	}

	public void addPartida(Partidas objPartida) {
		try {

			stmt = connection.prepareStatement("insert into Partidas values (?, convert(datetime, replace(?, 'T', ' '), 102), ?)");			
			stmt.setInt(1, objPartida.getCodPartida());
			stmt.setString(2, objPartida.getDataPartida());
			stmt.setInt(3,  objPartida.getCodAviao());

			stmt.execute();
			System.out.println("Gravado!");

		} catch (Exception e) {
			e.printStackTrace();

		}
	}

	public ArrayList<Partidas> pegaTodasPartidas(){
		ArrayList<Partidas> listaPartidas = new ArrayList<>();

		try {
			stmt = connection.prepareStatement("select * from Partidas");
			rs = stmt.executeQuery();

			while(rs.next()) {
				Partidas partidaValue = new Partidas();
				partidaValue.setCodPartida(rs.getInt("CodPartida"));
				partidaValue.setDataPartida(rs.getString("DataPartida"));
				partidaValue.setCodAviao(rs.getInt("CodAviao"));

				listaPartidas.add(partidaValue);
			}

		} catch (Exception e) {
			e.printStackTrace();

		}
		return listaPartidas;
	}

	public void alteraPartida(int i, Partidas partidaValue) {

		try {
			stmt = connection.prepareStatement(" update Partidas"
					+ " 	set CodPartida = ?,"
					+ "        DataPartida = convert(datetime, replace(?, 'T', ' '), 102),"
					+ "        CodAviao = ?"
					+ " where CodPartida = " + i);

			stmt.setInt(1, partidaValue.getCodPartida());
			stmt.setString(2, partidaValue.getDataPartida());
			stmt.setInt(3, partidaValue.getCodAviao());
			stmt.execute();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void excluirPartida(int i) {
		try {
			stmt = connection.prepareStatement("delete from Partidas where CodPartida = " + i);
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


