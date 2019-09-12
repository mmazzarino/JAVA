package components.modelos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DaoModelos {

	private 
	Connection connection;
	PreparedStatement stmt;
	ResultSet rs;

	public DaoModelos(Connection connection) {
		this.connection = connection;
		stmt = null;
		rs = null;
	}

	public void addModelo(Modelos objModelo) {
		try {
			stmt = connection.prepareStatement("insert into Modelos values (?, ?)");
			stmt.setInt(1, objModelo.getCodModelo());
			stmt.setString(2,  objModelo.getDescricao());

			stmt.execute();
			System.out.println("Gravado!");

		} catch (Exception e) {
			e.printStackTrace();

		}


	}

	public ArrayList<Modelos> pegaTodosModelos(){
		ArrayList<Modelos> listaModelos = new ArrayList<>();

		try {
			stmt = connection.prepareStatement("select * from Modelos");
			rs = stmt.executeQuery();

			while(rs.next()) {
				Modelos modeloValue = new Modelos();
				modeloValue.setCodModelo(rs.getInt("CodModelo"));
				modeloValue.setDescricao(rs.getString("Descricao"));

				listaModelos.add(modeloValue);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listaModelos;
	}

	public void alteraModelo(int i, Modelos modeloValue) {
		try {
			stmt = connection.prepareStatement(" update Modelos"
					+ " 	set CodModelo = ?,"
					+ "        Descricao = ?"
					+ " where CodModelo = " + i);

			stmt.setInt(1, modeloValue.getCodModelo());
			stmt.setString(2, modeloValue.getDescricao());
			stmt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void excluiModelo(int i) {
		try {
			stmt = connection.prepareStatement("delete from Modelos where CodModelo = " + i);
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


