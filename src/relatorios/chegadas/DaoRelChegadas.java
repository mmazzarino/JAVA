package relatorios.chegadas;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DaoRelChegadas {
	private
	Connection connection;
	PreparedStatement stmt;
	ResultSet rs;

	public DaoRelChegadas(Connection connection) {
		this.connection = connection;
		stmt = null;
		rs = null;
	}

	public void relChegadas(String usuario, String dtIni, String dtFim) {

		String sql =   " declare @Usuario varchar(50) \r\n" +
		               " declare @DtIni datetime \r\n" + 
		               " declare @DtFim datetime \r\n" +
					   
		               "	set @Usuario = ? \r\n" + 
		               "	set @DtIni = convert(datetime, replace(?, 'T', ' '), 102) \r\n" +
		               "	set @DtFim = convert(datetime, replace(?, 'T', ' '), 102) \r\n" +

					   "	delete from TempRelChegadas where Usuario = @Usuario \r\n" + 

				       "	insert into TempRelChegadas (NomeAviao, Descricao, NomeComp, DataPArtida, DataChegada, Usuario) \r\n" + 
				       "		(select av.NomeAviao, mod.Descricao, comp.Nome Companhia, part.DataPartida, cheg.DataChegada, @Usuario \r\n" + 
				       "		from Chegadas cheg inner join Partidas part on cheg.CodChegada = part.CodPartida \r\n" + 
				       "						   inner join Avioes av on av.CodAviao = cheg.CodAviao \r\n" + 
				       "						   inner join Modelos mod on mod.CodModelo = av.CodModelo \r\n" + 
				       "					       inner join CompanhiasAereas comp on comp.CodCompanhia = av.CodCompanhia \r\n" +
				       "        where ((cheg.DataChegada >= @DtIni) and (cheg.DataChegada <= @DtFim))) ";
				       

		try {
			stmt = connection.prepareStatement(sql);
			stmt.setString(1, usuario);
			stmt.setString(2, dtIni);
			stmt.setString(3, dtFim);
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
