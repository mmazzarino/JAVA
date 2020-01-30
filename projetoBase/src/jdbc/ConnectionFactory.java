package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	public static Connection getConnection() throws SQLException {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			System.out.println("Conectando ao banco");
			return DriverManager.getConnection("jdbc:sqlserver://DESKTOP-nomePC\\SQLEXPRESS:porta;databaseName=nomeBanco", "", "");
		} catch (ClassNotFoundException e) {
			throw new SQLException(e.getMessage());
		}
	}
}
